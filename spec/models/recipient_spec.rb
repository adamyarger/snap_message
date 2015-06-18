require 'rails_helper'

describe Recipient do
	it 'has a valid factory' do
		expect(build(:recipient)).to be_valid
	end

	it { should belong_to(:user) }
	it { should belong_to(:message) }
	it { should validate_presence_of(:user_id) }
end


