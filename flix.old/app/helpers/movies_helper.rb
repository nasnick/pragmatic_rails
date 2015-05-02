module MoviesHelper
  def check_movie_success(movie)
    if movie.flop?
      content_tag(:strong, "FLOP!")
    else
      number_to_currency(movie.total_gross) 
    end
  end
  
  def image_for(movie)
    if movie.image_file_name.blank?
      movie.image_file_name = image_tag("placeholder.png")
    else
      image_tag(movie.image_file_name)
  end
 end
end