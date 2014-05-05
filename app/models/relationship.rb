class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "Ship"
  belongs_to :followed, class_name: "Ship"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end