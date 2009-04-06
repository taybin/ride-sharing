class CreateRides < ActiveRecord::Migration
  def self.up
    create_table :rides do |t|
      t.boolean :offering
      t.string :location
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :rides
  end
end
