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

    context 'with invalid attributes' do
    	before(:each) do
    		user = FactoryGirl.create :user
    		sign_in user
    	end

    	it 'creates an invalid message' do
    		post :create, message: attributes_for(:message, body: nil)
    		expect(Message.count).to eq(0)
    	end

    	it 're-renders the new view' do
    		post :create, message: attributes_for(:message, body: nil)
    		expect(response).to render_template :new
    	end
    end
	end

end