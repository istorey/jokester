class Vote < ActiveRecord::Base
	belongs_to :joke
	belongs_to :user
	validates :type, inclusion: { in:[ "up", "down"] }, presence: true
	validates :joke_id, numericality: true, presence: true
	validates :user_id, numericality: true, presence: true
end