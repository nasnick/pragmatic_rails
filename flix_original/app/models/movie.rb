class Movie < ActiveRecord::Base
  def flop?
    total_gross == blank? || total_gross < 400000000
  end
end
