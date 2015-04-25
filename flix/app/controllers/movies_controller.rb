class MoviesController < ApplicationController
  
  def index
    @movies = Movie.movie_viewable
  end
  
  def all
    @movies = Movie.all.order(total_gross: :desc)
  end
  
  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_url
  end
 
  def new
    @movie = Movie.new
    # @movie.save
  end 
  
  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to @movie
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to @movie
  end

private

 def movie_params
   params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
 end
end