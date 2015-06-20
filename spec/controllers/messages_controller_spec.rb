require 'rails_helper'


describe MessagesController, type: :controller do
	

	describe 'POST #create' do
    context 'with valid attributes' do
			before(:each) do
				user = FactoryGirl.create :user
				sign_in user
			end
	    	
			it 'creates the message' do
				post :create, message: attributes_for(:message)
				expect(Message.count).to eq(1)
			end

			it 'redirects to the "show" action for the new post' do
				post :create, message: attributes_for(:message)
				expect(response).to redirect_to root_path
			end
    end

    
	end

end