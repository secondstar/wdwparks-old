class Park < ActiveRecord::Base
  has_many :lands
  has_many :attractions

  # Overall method: Get a list, save the list, and then itereate through the list to update the individual parks.
  
  def self.get_list_of_parks_from_touringplans_com(touringplans_com_permalink)
    # returns park names and permalinks 
    
  end
  
  def self.save_list_of_parks_in_WDW_from_touringplans_com(hash_array_from_touringplans_com)
    
    # stub this in test with factory_girl
    # iterate through the collection of parks with find_or_initialize_by_permalink
    # then iterate through each park with the latest park info from obtain_park_info
    # then save
  end
  
  def self.obtain_latest_info_from_touringplans_com(wdwparks_permalink)
    # pulls the latest info for one park from touringplans.com
    
    # mock this in the test
    # returns the details of the named park
  end
  
end
