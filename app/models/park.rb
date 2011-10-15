class Park < ActiveRecord::Base
  has_many :lands
  has_many :attractions

  # Overall method: Get a list, save the list, and then itereate through the list to update the individual parks.
  
  def self.get_list_of_parks
    # returns park names and permalinks 
    @parks = [{"name" => "Magic Kingdom", "permalink" =>  "magic-kingdom", "rating" =>  5, "credit" =>  "touringplans.com"},
       {"name" => "Animal Kingdom", "permalink" =>  "animal-kingdom", "rating" =>  3, "credit" =>  "touringplans.com"},
       {"name" => "Epcot", "permalink" =>  "epcot", "rating" =>  4, "credit" =>  "touringplans.com"},
       {"name" => "Disney's Hollywood Studios", "permalink" =>  "hollywood-studios", "rating" =>  3, "credit" =>  "touringplans.com"},
       {"name" => "Blizzard Beach", "permalink" =>  "blizzard-beach", "rating" =>  2, "credit" =>  "touringplans.com"},
       {"name" => "Typhoon Lagoon", "permalink" =>  "typhoon-lagoon", "rating" =>  2, "credit" =>  "touringplans.com"} ]
    return @parks
  end
  
  def self.save_list_of_parks_in_WDW(hash_array_from_get_list_of_parks)
    @parks = hash_array_from_get_list_of_parks
    @parks.each do |park|
      # puts "link:  #{park['permalink']}"
      @park = Park.find_or_initialize_by_permalink(park['permalink'])
      @park.name    = park['name']
      @park.rating  = park['rating']
      @park.credit = park['credit']
      if @park.save
        puts "Saved:  #{@park.name}"
      else
        puts "Failed: #{@park.name} -- #{@park.errors}"
      end
    end
  end
  
  
end
