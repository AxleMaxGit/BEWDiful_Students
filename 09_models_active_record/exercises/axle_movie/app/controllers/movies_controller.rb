class MoviesController < ApplicationController

  before_action :authenticate_user!, :only => [:new]

  def index #retrieves all records from the database
    @movies = Movie.all
  end

  def search
    @movies = Movie.where("title like ?", "%#{params[:search]}%")
    @searchterm = "\"#{params[:search]} \""
  end

  def show #retrieves the record from the database
    @movie = Movie.find(params[:id])
  end

  def new #creates an object to contain the new movie data
    @movie = Movie.new

  end

  def create #posts the entry to the database
    @movie = Movie.new(params.require(:movie).permit(:title, :description, :year_released))
    if @movie.save
    	redirect_to movies_path
    end
  end

    def edit
        @movie = Movie.find(params[:id])
    end

  def update
    @movie = Movie.find(params[:id])

		if @movie.update_attributes permitted_attributes
			redirect_to movies_path
		else
			render 'edit'
		end
  end

  def destroy

    @movie = Movie.find(params[:id]).destroy
    if @movie.destroy
    	redirect_to movies_path
    end
  end

  

  protected

	def permitted_attributes
		params.require(:movie).permit(:title, :description, :year_released)
	end


end
