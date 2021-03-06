class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50000000
  end
  
  def self.released
    time = Time.now
    @movies = where("released_on <= ?", time).order(released_on: :desc)
  end
  
  def self.all_ordered
    @movies = Movie.all.order(released_on: :desc)
  end
end

#Movie.where("total_gross >= ?", 50000000).order(total_gross: :desc).to_sql

# Movie.all.order(created_at: :desc).limit(3).to_sql
# => "SELECT  \"movies\".* FROM \"movies\"  ORDER BY \"movies\".\"created_at\" DESC LIMIT 3"