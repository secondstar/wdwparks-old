class Attraction < ActiveRecord::Base
  belongs_to :land
  belongs_to :park
  
  require 'iconv'
  include HTTParty

  base_uri 'touringplans.com'
  # default_params :output => 'json'
  format :json
  
  # Overall method: Get a list, save the list, and then itereate through the list to update the individual attractions.
  
  def self.get_list_of_attractions_in_a_park_from_touringplans_com(wdwparks_permalink_of_park)
    # returns attraction name, permalink, and short name for each attraction in the park
    @list = get('/' + wdwparks_permalink + '/attractions.json')
    return @list
  end
  
  def self.save_list_of_attractions(wdwparks_permalink_of_park)
    unless 	District.find_by_permalink(park_permalink)  # if there's no district created
      @attractions_list = Attraction.get_list_of_attractions_in_a_park_from_touringplans_com(wdwparks_permalink_of_park).parsed_response
    end
    
    
    @attractions.each do |attraction|
      puts "link:  #{attraction['permalink']}"
      @attraction = Attraction.find_or_initialize_by_permalink(attraction['permalink'])
      @attraction.name     = attraction['name']
      @attraction.park_id  = attraction['park_id']
      @attraction.save!
    end
    
  end
  
  def self.obtain_latest_info_from_touringplans_com(wdwparks_permalink_of_attraction)
    # pulls the latest info for one attraction from touringplans.com
    # http://touringplans.com/magic-kingdom/attractions/captain-jack-sparrows-pirate-tutorial
    # using httparty
    @attraction = Attraction.find_by_permalink(wdwparks_permalink)
    @park = @attraction.park
    
    url = "/#{@park}/attractions/#{@attraction}"
    puts "#{url}"
    puts get(url)
    return get(url)
    
  end
  
  def self.save_latest_info_from_touringplans_com(wdwparks_attraction_permalink, hash_array_from_touringplans_com)
    @attraction = Attraction.find_by_permalink(wdwparks_attraction_permalink)
    @attraction.update_attributes!(hash_array_from_touringplans_com)
    
  end
end
