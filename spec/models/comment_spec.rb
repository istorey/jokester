require 'rails_helper'
require_relative "../../app/models/comment.rb"

describe Comment do
	describe "::new" do
		it "can be instantiated" do
			c = Comment.new
			expect(c.class).to eq(Comment)
		end
	end

	it { should validate_presence_of(:body) }
	it { should validate_numericality_of(:joke_id) }
	it { should belong_to(:joke) }
end