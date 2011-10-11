require 'spec_helper'

describe "lands/index.html.erb" do
  before(:each) do
    assign(:lands, [
      stub_model(Land,
        :name => "Name",
        :park_id => 1
      ),
      stub_model(Land,
        :name => "Name",
        :park_id => 1
      )
    ])
  end

  it "renders a list of lands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
