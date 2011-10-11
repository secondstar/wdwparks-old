require 'spec_helper'

describe "attractions/edit.html.erb" do
  before(:each) do
    @attraction = assign(:attraction, stub_model(Attraction,
      :permalink => "MyString",
      :short_name => "MyString",
      :when_to_go => "MyString",
      :scheduled_code => "MyString",
      :reflective_captioning => "MyString",
      :physical_considerations => "MyString",
      :open_not_so_scary => "MyString",
      :open_emh_evening => "MyString",
      :name => "MyString",
      :duration => "MyString",
      :average_wait_assumes => "MyString",
      :scope_and_scale_code => "MyString",
      :minor_attraction => "MyString",
      :intense => "MyString",
      :video_captioning => "MyString",
      :open_very_merry => "MyString",
      :not_to_be_missed => "MyString",
      :assistive_listening => "MyString",
      :wheelchair_transfer_code => "MyString",
      :must_transfer_from_wheelchair => "MyString",
      :special_needs => "MyString",
      :single_rider => "MyString",
      :seasonal => "MyString",
      :handheld_captioning => "MyString",
      :frightening => "MyString",
      :no_service_animals => "MyString",
      :loading_speed => "MyString",
      :fastpass_booth => "MyString",
      :what_it_is => "MyString",
      :ultimate_code => "MyString",
      :open_emh_morning => "MyString",
      :category_code => "MyString",
      :sign_language => "MyString",
      :service_animal_check => "MyString",
      :rider_swap => "MyString",
      :average_wait_per_hundred => "MyString",
      :probable_wait_time => "MyString",
      :ultimate_task => "MyString",
      :time_zone => "MyString",
      :audio_description => "MyString",
      :height_restriction => "MyString",
      :land_id => 1,
      :park_id => 1
    ))
  end

  it "renders the edit attraction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attractions_path(@attraction), :method => "post" do
      assert_select "input#attraction_permalink", :name => "attraction[permalink]"
      assert_select "input#attraction_short_name", :name => "attraction[short_name]"
      assert_select "input#attraction_when_to_go", :name => "attraction[when_to_go]"
      assert_select "input#attraction_scheduled_code", :name => "attraction[scheduled_code]"
      assert_select "input#attraction_reflective_captioning", :name => "attraction[reflective_captioning]"
      assert_select "input#attraction_physical_considerations", :name => "attraction[physical_considerations]"
      assert_select "input#attraction_open_not_so_scary", :name => "attraction[open_not_so_scary]"
      assert_select "input#attraction_open_emh_evening", :name => "attraction[open_emh_evening]"
      assert_select "input#attraction_name", :name => "attraction[name]"
      assert_select "input#attraction_duration", :name => "attraction[duration]"
      assert_select "input#attraction_average_wait_assumes", :name => "attraction[average_wait_assumes]"
      assert_select "input#attraction_scope_and_scale_code", :name => "attraction[scope_and_scale_code]"
      assert_select "input#attraction_minor_attraction", :name => "attraction[minor_attraction]"
      assert_select "input#attraction_intense", :name => "attraction[intense]"
      assert_select "input#attraction_video_captioning", :name => "attraction[video_captioning]"
      assert_select "input#attraction_open_very_merry", :name => "attraction[open_very_merry]"
      assert_select "input#attraction_not_to_be_missed", :name => "attraction[not_to_be_missed]"
      assert_select "input#attraction_assistive_listening", :name => "attraction[assistive_listening]"
      assert_select "input#attraction_wheelchair_transfer_code", :name => "attraction[wheelchair_transfer_code]"
      assert_select "input#attraction_must_transfer_from_wheelchair", :name => "attraction[must_transfer_from_wheelchair]"
      assert_select "input#attraction_special_needs", :name => "attraction[special_needs]"
      assert_select "input#attraction_single_rider", :name => "attraction[single_rider]"
      assert_select "input#attraction_seasonal", :name => "attraction[seasonal]"
      assert_select "input#attraction_handheld_captioning", :name => "attraction[handheld_captioning]"
      assert_select "input#attraction_frightening", :name => "attraction[frightening]"
      assert_select "input#attraction_no_service_animals", :name => "attraction[no_service_animals]"
      assert_select "input#attraction_loading_speed", :name => "attraction[loading_speed]"
      assert_select "input#attraction_fastpass_booth", :name => "attraction[fastpass_booth]"
      assert_select "input#attraction_what_it_is", :name => "attraction[what_it_is]"
      assert_select "input#attraction_ultimate_code", :name => "attraction[ultimate_code]"
      assert_select "input#attraction_open_emh_morning", :name => "attraction[open_emh_morning]"
      assert_select "input#attraction_category_code", :name => "attraction[category_code]"
      assert_select "input#attraction_sign_language", :name => "attraction[sign_language]"
      assert_select "input#attraction_service_animal_check", :name => "attraction[service_animal_check]"
      assert_select "input#attraction_rider_swap", :name => "attraction[rider_swap]"
      assert_select "input#attraction_average_wait_per_hundred", :name => "attraction[average_wait_per_hundred]"
      assert_select "input#attraction_probable_wait_time", :name => "attraction[probable_wait_time]"
      assert_select "input#attraction_ultimate_task", :name => "attraction[ultimate_task]"
      assert_select "input#attraction_time_zone", :name => "attraction[time_zone]"
      assert_select "input#attraction_audio_description", :name => "attraction[audio_description]"
      assert_select "input#attraction_height_restriction", :name => "attraction[height_restriction]"
      assert_select "input#attraction_land_id", :name => "attraction[land_id]"
      assert_select "input#attraction_park_id", :name => "attraction[park_id]"
    end
  end
end
