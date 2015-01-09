class Joke < ActiveRecord::Base
	belongs_to :user
	has_many :votes
	has_many :comments
	validates :body, presence: true
	validates :user_id, numericality: true, presence: true
end