require 'spec_helper'

describe "parks/index.html.erb" do
  before(:each) do
    assign(:parks, [
      stub_model(Park,
        :name => "Name"
      ),
      stub_model(Park,
        :name => "Name"
      )
    ])
  end

  it "renders a list of parks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
