class Park < ActiveRecord::Base
  has_many :lands
  has_many :attractions
  def self.get_list_of_parks(source)
    # returns park names and permalinks 
    
  end
  
  def self.obtain_latest_park_info(source, park_name)
    # mock this in the test
    # returns the details of the named park
  end
  
  def self.update_all_parks(parks_array)
    # stub this in test with factory_girl
    # iterate through the collection of parks with find_or_initialize_by_permalink
    # then iterate through each park with the latest park info from obtain_park_info
    # then save
  end
  
end
