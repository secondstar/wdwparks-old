require 'spec_helper'

describe "lands/show.html.erb" do
  before(:each) do
    @land = assign(:land, stub_model(Land,
      :name => "Name",
      :park_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
