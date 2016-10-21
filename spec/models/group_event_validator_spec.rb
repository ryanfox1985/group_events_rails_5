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

RSpec.describe GroupEventValidator, type: :model do
  FIELDS = [:user_id, :starts, :duration, :name, :description, :location,
            :state].freeze

  FIELDS.each do |field|
    it "should validate #{field}" do
      expect do
        params = {}
        params[field] = nil
        group_event = GroupEventValidator.create!(params)

        expect(group_event.errors).to eq []
      end.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
