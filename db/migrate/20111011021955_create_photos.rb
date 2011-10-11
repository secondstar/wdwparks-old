class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :url
      t.string :farm
      t.string :server
      t.string :secret
      t.integer :owner
      t.string :photogenic_id
      t.string :photogenic_type
      t.string :flickr_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
