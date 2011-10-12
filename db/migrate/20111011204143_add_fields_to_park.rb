class AddFieldsToPark < ActiveRecord::Migration
  def self.up
    add_column :parks, :rating, :integer
    add_column :parks, :credit, :string
  end

  def self.down
    remove_column :parks, :credit
    remove_column :parks, :rating
  end
end
