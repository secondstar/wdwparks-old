namespace :app do

  desc 'Collect additional facts and links for parent resource.'
  task :update_parks => :environment do
    puts 'Pulling lastest list of parks from memory and updating.'
    @parks = Park.get_list_of_parks
    Park.save_list_of_parks_in_WDW(@parks)
    
  end
end
