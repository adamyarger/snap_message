require 'rails_helper'

feature 'user creates a new message' do
	scenario 'successfully' do
		user = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
		visit root_path

		click_on 'New'

		fill_in 'Message', with: "hello world"
		check('user1')
		click_on 'submit'


	end
end