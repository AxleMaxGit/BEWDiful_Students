class WelcomeController < ApplicationController

	def index

		@movie = Movie.all

	end

end


