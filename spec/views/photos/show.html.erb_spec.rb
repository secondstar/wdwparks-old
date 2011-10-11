require 'spec_helper'

describe "photos/show.html.erb" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :url => "Url",
      :farm => "Farm",
      :server => "Server",
      :secret => "Secret",
      :owner => 1,
      :photogenic_id => "Photogenic",
      :photogenic_type => "Photogenic Type",
      :flickr_id => "Flickr",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Farm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Server/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Secret/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photogenic/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photogenic Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Flickr/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
