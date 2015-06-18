class MessagesController < ApplicationController
	before_action :authenticate_user!

	def new
		@message = Message.new
		@user = current_user.following
		@users = User.all
	end

	def create
		@message = current_user.messages.build(message_params)

		if @message.save
			flash[:success] = "Message Sent!"
			redirect_to messages_path
		else
			flash[:alert] = "Great Scott!"
			redirect_to root_url
		end
	end

	def index
		@user = User.find(current_user)
		@messages = Recipient.where(:user_id => current_user.id).order("created_at DESC")
		@recipients = User.all
		@message = Message.new
		# @messages.unread.update_all(read: true, updated_at: Time.now.utc)
	end

	private

		def message_params
			params.require(:message).permit(:body, :content, :title, :thumbnail_url, :sender_id, user_tokens: [])
		end
end


