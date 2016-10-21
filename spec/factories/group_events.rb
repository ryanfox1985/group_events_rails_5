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

FactoryGirl.define do
  factory :group_event do
    user
    starts "2015-05-23 00:00:00"
    duration 1
    name "MyString"
    description "MyText"
    location "MyString"
  end
end
