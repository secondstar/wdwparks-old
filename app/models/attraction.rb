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
    @list = get('/' + wdwparks_permalink_of_park + '/attractions.json')
    return @list
  end
  
  def self.save_list_of_attractions(wdwparks_permalink_of_park)
      @attractions = Attraction.get_list_of_attractions_in_a_park_from_touringplans_com(wdwparks_permalink_of_park).parsed_response
      @park = Park.find_by_permalink(wdwparks_permalink_of_park)
    
    @attractions.each do |attraction|
      puts "link:  #{attraction['permalink']}"
      puts "park permalink: #{@park.permalink}"
      @attraction = Attraction.find_or_initialize_by_permalink(attraction['permalink'])
      @attraction.name     = attraction['name']
      @attraction.park_id  = @park.id
      @attraction.save!
    end
    
  end
  
  def self.obtain_latest_info_from_touringplans_com(wdwparks_attraction_permalink)
    # pulls the latest info for one attraction from touringplans.com
    # http://touringplans.com/magic-kingdom/attractions/captain-jack-sparrows-pirate-tutorial
    # using httparty
    @attraction = Attraction.find_by_permalink(wdwparks_attraction_permalink)
    @park = @attraction.park
    
    url = "/#{@park.permalink}/attractions/#{@attraction.permalink}.json"
    puts "#{url}"
    return get(url).parsed_response
    
  end
  ### START HERE!!
  def self.save_latest_info_from_touringplans_com(wdwparks_attraction_permalink, hash_array_of_attraction_from_touringplans_com)
    if @attraction.update_attributes(hash_array_of_attraction_from_touringplans_com)
      puts "#{@attraction.name} successfully updated"
    else
      puts "#{@attraction.name} update failed: #{@attraction.errors}"
    end
  end
end
