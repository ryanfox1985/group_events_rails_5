# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates email' do
    expect { User.create! }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
