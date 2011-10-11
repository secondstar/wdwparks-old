require 'spec_helper'

describe "parks/edit.html.erb" do
  before(:each) do
    @park = assign(:park, stub_model(Park,
      :name => "MyString"
    ))
  end

  it "renders the edit park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parks_path(@park), :method => "post" do
      assert_select "input#park_name", :name => "park[name]"
    end
  end
end
