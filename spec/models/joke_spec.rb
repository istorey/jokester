require 'rails_helper'
require_relative "../../app/models/joke.rb"

describe Joke do
	describe "::new" do
		it "can be instantiated" do
			j = Joke.new
			expect(j.class).to eq(Joke)
		end
	end

	it { should validate_presence_of(:body) }
	#it { should validate_presence_of(:user_id)}
end