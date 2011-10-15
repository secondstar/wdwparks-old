class Land < ActiveRecord::Base
  belongs_to :park
  has_many :attractions

  # Overall method: Get a list, save the list, and then itereate through the list to update the individual lands.
  def self.get_list_of_lands_in_the_current_park_from_touringplans_com(wdwparks_permalink_of_park)
    # returns land names and permalinks 
    require 'nokogiri'
    require 'open-uri'
    
    url = "http://touringplans.com/#{wdwparks_permalink_of_park}/lands"
    puts url
    doc = Nokogiri::HTML(open(url))
    @lands = doc.css(".dv_titleboxtxt a")     
    return @lands
  end
  
  def self.save_current_list_of_lands_from_touringplans_com(wdwparks_permalink_of_park, hash_array_from_touringplans_com)
    # mock this in the test
    # returns the details of the named land
    @park = Park.find_by_permalink(wdwparks_permalink_of_park)
    @lands = hash_array_from_touringplans_com
    @lands.each do |land|
      @land         = Land.find_or_initialize_by_permalink(land.attributes["href"].value)
      @land.name    = land.text
      @land.park    = Park.find_by_permalink(wdwparks_permalink_of_park)
      if @land.save
        puts "Saved:  #{@land.name}, #{@land.permalink}"
      else
        puts "Failed: #{@land.name} -- #{@land.errors}"
      end
    end
  end
  
end
