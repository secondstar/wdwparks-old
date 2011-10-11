require 'spec_helper'

describe "photos/index.html.erb" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :url => "Url",
        :farm => "Farm",
        :server => "Server",
        :secret => "Secret",
        :owner => 1,
        :photogenic_id => "Photogenic",
        :photogenic_type => "Photogenic Type",
        :flickr_id => "Flickr",
        :title => "Title"
      ),
      stub_model(Photo,
        :url => "Url",
        :farm => "Farm",
        :server => "Server",
        :secret => "Secret",
        :owner => 1,
        :photogenic_id => "Photogenic",
        :photogenic_type => "Photogenic Type",
        :flickr_id => "Flickr",
        :title => "Title"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Farm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Server".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Secret".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photogenic".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photogenic Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Flickr".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
