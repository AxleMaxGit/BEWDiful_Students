class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = @movies
  end

  def edit

  end



end
