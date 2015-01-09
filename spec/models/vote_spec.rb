require 'rails_helper'
require_relative "../../app/models/vote.rb"

describe Vote do
	describe "::new" do
		it "can be instantiated" do
			v = Vote.new
			expect(v.class).to eq(Vote)
		end
	end

	it { should validate_presence_of(:type) }
	it { should validate_inclusion_of(:type). 
			in_array(%w(up down)) }
	it { should validate_presence_of(:user_id) }
	it { should validate_numericality_of(:user_id) }
	it { should belong_to(:joke) }
end