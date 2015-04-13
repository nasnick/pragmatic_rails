module MoviesHelper
  def check_movie_success(movie)
    if movie.flop?
      content_tag(:strong, "FLOP!")
    else
      number_to_currency(movie.total_gross) 
    end
  end
end
