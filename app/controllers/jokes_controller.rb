class JokesController < ApplicationController
	def index
		@jokes = Joke.all
	end

	def show
		@joke = Joke.find(params[:joke_id])
	end

	def new
		@joke = Joke.new
	end

	def create
		@joke = Joke.create(joke_params)
	end

	def update
		@joke = Joke.update(joke_params)
	end

	def edit
		@joke = Joke.find(params[:joke_id, :user_id])
	end

	def destroy
		@joke = Joke.destroy
	end


private

	def joke_params
		params.require(:joke).permit(:body)
	end
end
	
