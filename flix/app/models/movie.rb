class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50000000
  end
  
  def self.movie_success
    @movies = where('total_gross > 50000000').order(total_gross: :desc)
  end
end

#Movie.where("total_gross >= ?", 50000000).order(total_gross: :desc).to_sql