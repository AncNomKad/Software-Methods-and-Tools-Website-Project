class CreateShips < ActiveRecord::Migration
  def up
    create_table :ships do |t|
      t.string :ship_label
      t.string :ship_class
      t.string :manufacturer
      t.integer :hitpoints
      t.integer :shields
      t.string :description
      t.string :image
    end
  end

  def down
    drop_table :ships 
  end
end
