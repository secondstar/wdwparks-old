require 'spec_helper'

describe "parks/new.html.erb" do
  before(:each) do
    assign(:park, stub_model(Park,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parks_path, :method => "post" do
      assert_select "input#park_name", :name => "park[name]"
    end
  end
end
