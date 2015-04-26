class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50000000
  end
  
  def self.movie_viewable
    time = Time.now
    @movies = where("released_on <= ?", time).order(released_on: :desc)
  end
  
  def self.all_ordered
    @movies = Movie.all.order(released_on: :desc)
  end
end

#Movie.where("total_gross >= ?", 50000000).order(total_gross: :desc).to_sql