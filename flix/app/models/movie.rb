class Movie < ActiveRecord::Base
  def flop?
    total_gross == nil.blank? || total_gross < 50000000
  end
end