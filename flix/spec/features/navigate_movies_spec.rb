require 'spec_helper'

describe "Navigating movies" do
  it "allows navigation from the detail page to the listing page" do
    movie = Movie.create(title: "Iron Man",
                         rating: "PG-13",
                         total_gross: 318412101.00,
                         description: "Tony Stark builds an armored suit to fight the throes of evil",
                         released_on: "2008-05-02")

    visit movie_url(movie)

    click_link "All Movies"

    expect(current_path).to eq(movies_path)

  end
  
  describe "Navigating movies" do
    it "allows navigation from the listing page to the detail page" do
      movie = movie_attributes
    
    visit movies_url
    
    click_link movie.title

    expect(current_path).to eq(movie_path(movie))
    end
  end
end
