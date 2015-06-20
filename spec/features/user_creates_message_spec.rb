require 'rails_helper'


feature 'user creates a new message' do
	scenario 'successfully' do
		user = FactoryGirl.create(:user)
		user2 = FactoryGirl.create(:user)
		login_as(user, :scope => :user)
		visit root_path

		click_on 'New'
		fill_in 'Message', with: "hello world"
		check('user' + user.id.to_s)
		check('user' + user2.id.to_s)
		expect(page).to have_css '#stream_item'
		click_on 'submit'

		expect(page.current_path).to eq root_path
		expect(page).to have_content 'Message Sent!'
	end
end