require 'rails_helper'


feature 'user creates a new message' do
	scenario 'successfully' do
		create_message('hello world')

		expect(page.current_path).to eq root_path
		expect(page).to have_content 'Message Sent!'
	end
end