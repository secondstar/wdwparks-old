require 'spec_helper'

describe "attractions/index.html.erb" do
  before(:each) do
    assign(:attractions, [
      stub_model(Attraction,
        :permalink => "Permalink",
        :short_name => "Short Name",
        :when_to_go => "When To Go",
        :scheduled_code => "Scheduled Code",
        :reflective_captioning => "Reflective Captioning",
        :physical_considerations => "Physical Considerations",
        :open_not_so_scary => "Open Not So Scary",
        :open_emh_evening => "Open Emh Evening",
        :name => "Name",
        :duration => "Duration",
        :average_wait_assumes => "Average Wait Assumes",
        :scope_and_scale_code => "Scope And Scale Code",
        :minor_attraction => "Minor Attraction",
        :intense => "Intense",
        :video_captioning => "Video Captioning",
        :open_very_merry => "Open Very Merry",
        :not_to_be_missed => "Not To Be Missed",
        :assistive_listening => "Assistive Listening",
        :wheelchair_transfer_code => "Wheelchair Transfer Code",
        :must_transfer_from_wheelchair => "Must Transfer From Wheelchair",
        :special_needs => "Special Needs",
        :single_rider => "Single Rider",
        :seasonal => "Seasonal",
        :handheld_captioning => "Handheld Captioning",
        :frightening => "Frightening",
        :no_service_animals => "No Service Animals",
        :loading_speed => "Loading Speed",
        :fastpass_booth => "Fastpass Booth",
        :what_it_is => "What It Is",
        :ultimate_code => "Ultimate Code",
        :open_emh_morning => "Open Emh Morning",
        :category_code => "Category Code",
        :sign_language => "Sign Language",
        :service_animal_check => "Service Animal Check",
        :rider_swap => "Rider Swap",
        :average_wait_per_hundred => "Average Wait Per Hundred",
        :probable_wait_time => "Probable Wait Time",
        :ultimate_task => "Ultimate Task",
        :time_zone => "Time Zone",
        :audio_description => "Audio Description",
        :height_restriction => "Height Restriction",
        :land_id => 1,
        :park_id => 13
      ),
      stub_model(Attraction,
        :permalink => "Permalink",
        :short_name => "Short Name",
        :when_to_go => "When To Go",
        :scheduled_code => "Scheduled Code",
        :reflective_captioning => "Reflective Captioning",
        :physical_considerations => "Physical Considerations",
        :open_not_so_scary => "Open Not So Scary",
        :open_emh_evening => "Open Emh Evening",
        :name => "Name",
        :duration => "Duration",
        :average_wait_assumes => "Average Wait Assumes",
        :scope_and_scale_code => "Scope And Scale Code",
        :minor_attraction => "Minor Attraction",
        :intense => "Intense",
        :video_captioning => "Video Captioning",
        :open_very_merry => "Open Very Merry",
        :not_to_be_missed => "Not To Be Missed",
        :assistive_listening => "Assistive Listening",
        :wheelchair_transfer_code => "Wheelchair Transfer Code",
        :must_transfer_from_wheelchair => "Must Transfer From Wheelchair",
        :special_needs => "Special Needs",
        :single_rider => "Single Rider",
        :seasonal => "Seasonal",
        :handheld_captioning => "Handheld Captioning",
        :frightening => "Frightening",
        :no_service_animals => "No Service Animals",
        :loading_speed => "Loading Speed",
        :fastpass_booth => "Fastpass Booth",
        :what_it_is => "What It Is",
        :ultimate_code => "Ultimate Code",
        :open_emh_morning => "Open Emh Morning",
        :category_code => "Category Code",
        :sign_language => "Sign Language",
        :service_animal_check => "Service Animal Check",
        :rider_swap => "Rider Swap",
        :average_wait_per_hundred => "Average Wait Per Hundred",
        :probable_wait_time => "Probable Wait Time",
        :ultimate_task => "Ultimate Task",
        :time_zone => "Time Zone",
        :audio_description => "Audio Description",
        :height_restriction => "Height Restriction",
        :land_id => 1,
        :park_id => 13
      )
    ])
  end

  it "renders a list of attractions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "When To Go".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Scheduled Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reflective Captioning".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Physical Considerations".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Open Not So Scary".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Open Emh Evening".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Average Wait Assumes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Scope And Scale Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Minor Attraction".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Intense".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Video Captioning".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Open Very Merry".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Not To Be Missed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Assistive Listening".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Wheelchair Transfer Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Must Transfer From Wheelchair".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Special Needs".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Single Rider".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Seasonal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Handheld Captioning".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Frightening".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "No Service Animals".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Loading Speed".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fastpass Booth".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "What It Is".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ultimate Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Open Emh Morning".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sign Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service Animal Check".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rider Swap".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Average Wait Per Hundred".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Probable Wait Time".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ultimate Task".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Audio Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Height Restriction".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 13.to_s, :count => 2
  end
end
