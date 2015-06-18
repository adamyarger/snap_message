class Message < ActiveRecord::Base

	belongs_to :sender, class_name: 'User'
	has_many :recipients
	has_many :users, :through => :recipients

	validates :sender_id, presence: true
	validates :body, presence: true

	def user_tokens=(ids)
	    self.user_ids = ids
	end

end
