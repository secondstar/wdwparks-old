class CreateLands < ActiveRecord::Migration
  def self.up
    create_table :lands do |t|
      t.string :name
      t.integer :park_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lands
  end
end
