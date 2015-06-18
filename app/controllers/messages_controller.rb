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
		@messages = Recipient.where(:user_id => @user).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
		@messages.unread.update_all(read: true, updated_at: Time.now.utc)
	end

	private

		def message_params
			params.require(:message).permit(:body, :content, :title, :thumbnail_url, :sender_id, user_tokens: [])
		end
end


