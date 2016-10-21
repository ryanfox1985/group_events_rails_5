# == Schema Information
#
# Table name: group_events
#
#  created_at  :datetime         not null
#  description :text
#  duration    :integer
#  id          :integer          not null, primary key
#  location    :string
#  name        :string
#  starts      :datetime
#  state       :string           default("draft")
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_group_events_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe GroupEvent, type: :model do
  it 'event starts on 2016-05-23 00:00:00 and has 5 days the output will be
    2016-05-28 00:00:00' do
    event = FactoryGirl.create :group_event,
                               starts: '2016-05-23 00:00:00',
                               duration: 5
    expect(event.ends.to_s(:db)).to eq '2016-05-28 00:00:00'
  end

  it 'event to_json contains ends' do
    event = FactoryGirl.create :group_event,
                               starts: '2016-05-23 00:00:00',
                               duration: 5

    expect(event.to_json).to include 'ends'
  end
end
