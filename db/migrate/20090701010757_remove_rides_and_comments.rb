class RemoveRidesAndComments < ActiveRecord::Migration
  def self.up
    drop_table :rides
    drop_table :comments
  end

  def self.down
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.integer :ride_id

      t.timestamps
    end
    
    create_table :posts do |t|
      t.string :name
      t.text :text

      t.timestamps
    end
    
  end
end
