# require 'rails_helper'

# describe MessagesController, type: :controller do
	
# 	describe 'POST #create' do
# 		context 'with valid attributes' do
# 			before(:each) do
# 				@user = FactoryGirl.create :user
# 				@post = FactoryGirl.create :message
# 				sign_in @user
# 				@message_attributes = FactoryGirl.attributes_for :message
# 			end

# 			it 'creates the message' do
# 				post :create, { user_id: @user.id, message_id: @post, message: @message_attributes }
# 				expect(Recipient.count).to eq(1)
# 			end

# 			it 'renders the message' do
# 				post :create, { user_id: @user.id, post_id: @post, message: @message_attributes }
# 				expect(response).to redirect_to messages_path
# 			end
# 		end

# 		context 'with invalid attributes' do
# 			before(:each) do
# 				@user = FactoryGirl.create :user
# 				@post = FactoryGirl.create :message
# 				sign_in @user
# 				@invalid_message_attributes = { body: nil }
# 			end

# 			it 'does not create the post' do
# 				post :create, { user_id: @user.id, post_id: @post, message: @invalid_message_attributes }
# 				expect(Recipient.count).to eq(0)
# 			end
# 		end
# 	end
# end

