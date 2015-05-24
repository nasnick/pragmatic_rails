class ReviewsController < ApplicationController
  
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
  end
  
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to movies_url
  end
end
