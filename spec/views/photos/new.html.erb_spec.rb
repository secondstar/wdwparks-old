require 'spec_helper'

describe "photos/new.html.erb" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :url => "MyString",
      :farm => "MyString",
      :server => "MyString",
      :secret => "MyString",
      :owner => 1,
      :photogenic_id => "MyString",
      :photogenic_type => "MyString",
      :flickr_id => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_url", :name => "photo[url]"
      assert_select "input#photo_farm", :name => "photo[farm]"
      assert_select "input#photo_server", :name => "photo[server]"
      assert_select "input#photo_secret", :name => "photo[secret]"
      assert_select "input#photo_owner", :name => "photo[owner]"
      assert_select "input#photo_photogenic_id", :name => "photo[photogenic_id]"
      assert_select "input#photo_photogenic_type", :name => "photo[photogenic_type]"
      assert_select "input#photo_flickr_id", :name => "photo[flickr_id]"
      assert_select "input#photo_title", :name => "photo[title]"
    end
  end
end
