class User < ActiveRecord::Base
  include ActiveModel::Validations
  #attr_accessible :email, :name, :password
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_ships, through: :relationships, source: :followed
 before_save { self.email = email.downcase }
 before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token) 
    Digest::SHA1.hexdigest(token.to_s)
  end

  def following?(other_ship)
    relationships.find_by(followed_id: other_ship.id)
  end

  def follow!(other_ship)
    relationships.create!(followed_id: other_ship.id)
  end

  def unfollow!(other_ship)
    relationships.find_by(followed_id: other_ship.id).destroy
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
