require 'rails_helper'

RSpec.describe "group_events/new", type: :view do
  before(:each) do
    assign(:group_event, GroupEvent.new(
      :user => nil,
      :starts => "",
      :duration => 1,
      :name => "MyString",
      :description => "MyText",
      :location => "MyString"
    ))
  end

  it "renders new group_event form" do
    render

    assert_select "form[action=?][method=?]", group_events_path, "post" do

      assert_select "input#group_event_user_id[name=?]", "group_event[user_id]"

      assert_select "input#group_event_starts[name=?]", "group_event[starts]"

      assert_select "input#group_event_duration[name=?]", "group_event[duration]"

      assert_select "input#group_event_name[name=?]", "group_event[name]"

      assert_select "textarea#group_event_description[name=?]", "group_event[description]"

      assert_select "input#group_event_location[name=?]", "group_event[location]"
    end
  end
end
