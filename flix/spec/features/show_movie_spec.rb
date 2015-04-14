require 'spec_helper'
describe "Shows the contents of the show page" do
  it "visits the page and looks for each item" do
    
    movie = Movie.create(movie_attributes(total_gross:300000000))
  
   visit movie_url(movie)
   
   expect(page).to have_text(movie.title)
   expect(page).to have_text(movie.rating)
   expect(page).to have_text("$300,000,000.00")
   expect(page).to have_text(movie.description)
   expect(page).to have_text(movie.released_on)
  end
  
  describe "displays total gross" do
    it "shows the total gross if the movie exceeds $50M" do
    
      movie = Movie.create(movie_attributes(total_gross: 60000000.00))

      visit movie_url(movie)

      expect(page).to have_text("$60,000,000.00")
  end


  describe "displays total gross" do
    it "shows 'flop!' if the total gross is less than $50M" do
    
      movie = Movie.create(movie_attributes(total_gross: 49000000.00))

      visit movie_url(movie)

      expect(page).to have_text("FLOP!")
    end
   end
  end
end