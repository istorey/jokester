class Vote < ActiveRecord::Base
	belongs_to :joke
	belongs_to :user
	validates :type, inclusion: { in:[ "up", "down"] }
	validates :joke_id, numericality: true, presence: true
end