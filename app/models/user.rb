class User < ActiveRecord::Base
  has_many :messages, foreign_key: :sender_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
