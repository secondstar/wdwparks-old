class Land < ActiveRecord::Base
  belongs_to :park
  has_many :attractions
  
  # Overall method: Get a list, save the list, and then itereate through the list to update the individual lands.
  def self.get_list_of_lands_in_the_current_park_from_touringplans_com(touringplans_com_permalink)
    # returns park names and permalinks 
    
  end
  
  def self.save_list_of_lands_in_the_current_park_from_touringplans_com(hash_array_from_touringplans_com)
    # mock this in the test
    # returns the details of the named park
  end
  
  def self.obtain_latest_info_from_touringplans_com(wdwparks_permalink)
    # pulls the latest info for one land from touringplans.com
    # stub this in test with factory_girl
    # iterate through the collection of parks with find_or_initialize_by_permalink
    # then iterate through each park with the latest park info from obtain_park_info
    # then save
  end
  
end
