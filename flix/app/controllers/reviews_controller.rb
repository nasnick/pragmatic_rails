class ReviewsController < ApplicationController
  
  def index

  end
  
  def destroy
    @review = aReview.find(params[:id])
    @review.destroy
    redirect_to movies_url
  end
end
