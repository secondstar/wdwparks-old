require 'spec_helper'

describe "lands/edit.html.erb" do
  before(:each) do
    @land = assign(:land, stub_model(Land,
      :name => "MyString",
      :park_id => 1
    ))
  end

  it "renders the edit land form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lands_path(@land), :method => "post" do
      assert_select "input#land_name", :name => "land[name]"
      assert_select "input#land_park_id", :name => "land[park_id]"
    end
  end
end
