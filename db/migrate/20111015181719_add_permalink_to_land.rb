class AddPermalinkToLand < ActiveRecord::Migration
  def self.up
    add_column :lands, :permalink, :text
  end

  def self.down
    remove_column :lands, :permalink
  end
end
