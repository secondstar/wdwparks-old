require 'spec_helper'

describe "parks/show.html.erb" do
  before(:each) do
    @park = assign(:park, stub_model(Park,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
