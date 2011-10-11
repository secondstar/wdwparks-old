require 'spec_helper'

describe "attractions/show.html.erb" do
  before(:each) do
    @attraction = assign(:attraction, stub_model(Attraction,
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
      :park_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Permalink/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Short Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/When To Go/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Scheduled Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reflective Captioning/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Physical Considerations/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Open Not So Scary/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Open Emh Evening/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Duration/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Average Wait Assumes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Scope And Scale Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Minor Attraction/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Intense/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Video Captioning/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Open Very Merry/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Not To Be Missed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Assistive Listening/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Wheelchair Transfer Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Must Transfer From Wheelchair/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Special Needs/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Single Rider/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Seasonal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Handheld Captioning/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Frightening/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/No Service Animals/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loading Speed/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fastpass Booth/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/What It Is/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ultimate Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Open Emh Morning/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sign Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Animal Check/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rider Swap/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Average Wait Per Hundred/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Probable Wait Time/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ultimate Task/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time Zone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Audio Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Height Restriction/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
