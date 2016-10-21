require 'rails_helper'

RSpec.describe "group_events/edit", type: :view do
  before(:each) do
    user = User.create(email: "MyString")

    @group_event = assign(:group_event, GroupEvent.create!(
      :user => user,
      :starts => "",
      :duration => 1,
      :name => "MyString",
      :description => "MyText",
      :location => "MyString"
    ))
  end

  it "renders the edit group_event form" do
    render

    assert_select "form[action=?][method=?]", group_event_path(@group_event), "post" do

      assert_select "input#group_event_user_id[name=?]", "group_event[user_id]"

      assert_select "input#group_event_starts[name=?]", "group_event[starts]"

      assert_select "input#group_event_duration[name=?]", "group_event[duration]"

      assert_select "input#group_event_name[name=?]", "group_event[name]"

      assert_select "textarea#group_event_description[name=?]", "group_event[description]"

      assert_select "input#group_event_location[name=?]", "group_event[location]"
    end
  end
end
