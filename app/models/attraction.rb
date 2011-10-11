class Attraction < ActiveRecord::Base
  belongs_to :land
  belongs_to :park
  
  # Overall method: Get a list, save the list, and then itereate through the list to update the individual attractions.
  
  def self.get_list_of_attractions_in_a_park_from_touringplans_com(touringplans_com_permalink)
    
  end
  
  def self.save_list_of_attractions(hash_array_from_touringplans_com)
    
  end
  
  def self.obtain_latest_info_from_touringplans_com(wdwparks_permalink)
    # pulls the latest info for one attraction from touringplans.com
    
  end
end
