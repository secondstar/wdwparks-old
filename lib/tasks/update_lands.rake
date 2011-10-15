namespace :app do

  desc 'update information about lands.'
  task :update_lands => :environment do
    puts 'Pulling lastest list of parks from memory and updating.'
    @parks = Park.all
    @parks.each do |park|
      puts park.permalink
      @lands= Land.get_list_of_lands_in_the_current_park_from_touringplans_com(park.permalink)
      Land.save_current_list_of_lands_from_touringplans_com(park.permalink, @lands)
    end
  end
end
