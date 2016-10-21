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

class GroupEvent < ApplicationRecord
  include AASM
  belongs_to :user
  validates :user_id, presence: true

  aasm column: :state do
    state :draft, initial: true
    state :published
    state :disabled

    event :disable do
      transitions from: [:published, :draft], to: :disabled
    end

    event :publish do
      transitions from: [:draft], to: :published
    end
  end

  def ends
    starts + duration.days
  end

  def as_json(options = nil)
    options ||= {}
    options[:methods] = ((options[:methods] || []) + [:ends])
    super(options)
  end
end
