require 'rails_helper'

RSpec.describe "group_events/show", type: :view do
  before(:each) do
    user = User.create(email: "MyString")

    @group_event = assign(:group_event, GroupEvent.create!(
      :user => user,
      :starts => "",
      :duration => 2,
      :name => "Name",
      :description => "MyText",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
  end
end
