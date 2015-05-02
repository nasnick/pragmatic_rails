require 'spec_helper'

describe "A movie" do
  it "is a flop if the total gross is less than $50M" do
    movie = Movie.new(total_gross: 40000000.00)

    expect(movie.flop?).to eq(true)
  end
  
  describe "A movie" do
    it "shows total gross if it is more than $50M" do
      movie = Movie.new(total_gross: 60000000.00)

      expect(movie.flop?).to eq(false)
    end
    
    describe "A movie" do
      it "only shows movies that were released in the past" do
        movie1 = Movie.create(movie_attributes(released_on: 3.months.ago))
        movie2 = Movie.create(movie_attributes(released_on: 3.months.from_now))
        
        expect(Movie.released).to include(movie1)
        expect(Movie.released).not_to include(movie2)
      end
      
      it "returns released movies ordered with the most recently-released movie first" do
        movie1 = Movie.create(movie_attributes(released_on: 3.months.ago))
        movie2 = Movie.create(movie_attributes(released_on: 2.months.ago))
        movie3 = Movie.create(movie_attributes(released_on: 1.months.ago))

        expect(Movie.released).to eq([movie3, movie2, movie1])
      end
    end
  end
end
    