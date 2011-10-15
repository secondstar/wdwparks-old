namespace :app do

  desc 'Collect additional facts and links for parent resource.'
  task :update_attractions => :environment do
    puts 'Pulling lastest list of attractions from memory and updating.'
    @parks = Park.all
    @parks.each do |park|
      puts "#{park.permalink}"
      Attraction.get_list_of_attractions_in_a_park_from_touringplans_com(park.permalink)
      Attraction.save_list_of_attractions(park.permalink)
      @attractions = Attraction.all
      @attractions.each do |attraction|
        # puts "Attraction name #{attraction.name}"
        @remote_info = Attraction.obtain_latest_info_from_touringplans_com(attraction.permalink)
        Attraction.save_latest_info_from_touringplans_com(attraction.permalink,  @remote_info)
      end
    end
    
  end
end
