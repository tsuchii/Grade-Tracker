require 'spec_helper'

describe "challenges/index.html.haml" do
  before(:each) do
    assign(:challenges, [
      stub_model(Challenge,
        :title => "Title",
        :points => 1,
        :team_id => 1,
        :description => "Description"
      ),
      stub_model(Challenge,
        :title => "Title",
        :points => 1,
        :team_id => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
