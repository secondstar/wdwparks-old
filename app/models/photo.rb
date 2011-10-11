class Photo < ActiveRecord::Base
  include HTTParty
  
  def self.find_photos_on_flickr(photo_search, quantity, photogenic_type)
      # httparty initializer
      format :json
      
      # basic initializers
      my_photo_search = photo_search.gsub(/'/, "\\\\'")
      total_photo_count = 0
      diff_quantity = 0
      @photos = []
      if photogenic_type == 'Attraction'
        @attraction = Attraction.find_by_name(photo_search)
        park_name = @attraction.park.name.gsub(/'/, "\\\\'")
        search_type = 'Attraction'
      else
        park_name = photo_search.gsub(/'/, "\\\\'")
        search_type = 'Park'
      end
      
      
      # search bases
      initial_search = "select * from flickr.photos.search where text ='#{my_photo_search}' and woe_id in (SELECT woeid FROM geo.places WHERE text='lake buena vista, FL' or text='bay lake, FL' or text='Windermere, FL') and api_key='075553032130e8023b265c3259d93c77' limit "
      parent_park_search_pt1 = "select * from flickr.photos.search where text ='"
      parent_park_search_pt2 = "' and woe_id in (SELECT woeid FROM geo.places WHERE text='lake buena vista, FL' or text='bay lake, FL' or text='Windermere, FL') and api_key='075553032130e8023b265c3259d93c77' limit "
      wdw_search = "SELECT * FROM flickr.photos.search WHERE woe_id in (SELECT woeid FROM geo.places WHERE text='lake buena vista, FL' or text='bay lake, FL' or text='Windermere, FL') and api_key='075553032130e8023b265c3259d93c77' limit "
      yql_search = initial_search

      
      # process
      while total_photo_count < quantity do
        diff_quantity = quantity.to_i - total_photo_count.to_i
        yql_search_with_limit = yql_search + diff_quantity.to_s
        puts "=============================="
        puts "search_type is #{search_type}"
        puts "---------"
        puts "yql_search_with_limit"
        puts "#{yql_search_with_limit}"
        puts "---------"
        @yql_results = get("http://query.yahooapis.com/v1/public/yql", 
                :query =>  {:q => yql_search_with_limit, :format =>  'json'})
        photo_count = @yql_results['query']['count']
        # troubleshooting indicators
        logger.debug "results:  #{photo_count.to_i}; quantity:#{quantity.to_i}; total photo count #{total_photo_count.to_i}; diff_quantity #{diff_quantity.to_i}"
        puts "results:  #{photo_count.to_i}; quantity: #{quantity.to_i}; total photo count: #{total_photo_count.to_i}; diff_quantity: #{diff_quantity.to_i}"
        if photo_count > 0 && !photo_search.blank?
          @photo_search_results = @yql_results['query']['results']['photo']
          unless @photo_search_results.kind_of?(Array) 
            @photo_search_results = [@photo_search_results]
          end
          @photos += @photo_search_results
          total_photo_count += photo_count.to_i
          diff_quantity = quantity.to_i - total_photo_count.to_i
        end
        
        # bump up to parent resource
        # Basically there are, at most, three passes: Attraction, Park, and WDW 
        if search_type == 'Attraction'
          # nb: this search needs to be tweaked from searching the park to the specific attraction
          yql_search = parent_park_search_pt1 + park_name + parent_park_search_pt2
          search_type = 'Park'
        elsif search_type == 'Park'
          # nb: current park search needs to be tweaked from searching the park to the specific land
          
          yql_search = parent_park_search_pt1 + park_name + parent_park_search_pt2
          search_type = 'Park'
        else
          # nb: current park search needs to be tweaked from searching WDW to the specific park
          search_type = 'wdw_search'
          yql_search = wdw_search
        end
        
      end
      unless @photos.kind_of?(Array) 
        @photos = [@photos]
      end
      return @photos
  end  
  
  
  belongs_to :photogenic, :polymorphic => true
end
