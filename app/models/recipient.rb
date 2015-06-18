class Recipient < ActiveRecord::Base

	belongs_to :message
	belongs_to :user

	validates :user_id, presence: true

end
