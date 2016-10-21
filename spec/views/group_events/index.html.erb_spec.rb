require 'rails_helper'

RSpec.describe "group_events/index", type: :view do
  before(:each) do
    user = User.create(email: "MyString")

    assign(:group_events, [
      GroupEvent.create!(
        :user => user,
        :starts => "",
        :duration => 2,
        :name => "Name",
        :description => "MyText",
        :location => "Location"
      ),
      GroupEvent.create!(
        :user => user,
        :starts => "",
        :duration => 2,
        :name => "Name",
        :description => "MyText",
        :location => "Location"
      )
    ])
  end

  it "renders a list of group_events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
