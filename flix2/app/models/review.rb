class Review < ActiveRecord::Base
  belongs_to :movie
  
  validates :name, presence: true
 
  validates :comment, length: { minimum: 4 }
  
  STARS = [1,2,3,4,5]
  
  validates :stars, inclusion: {
     in: STARS, 
     message: "must be between 1 and 5 stars" 
   }
end

#COMMANDS
#Recreate everything from scratch
#rake db:reset db:migrate

#Add a new field from the command line
# rails g migration AddFieldsToReviews location:text

#then rake db:migrate

#------------------------------

#CREATING A MOVIE IN DB
# movie = Movie.find(1)
# Create a new review
# review = movie.reviews.new
#or d = movie.reviews.new(name:"Flagon Flu")
#review.save
# > review.movie
#  => #<Movie id: 1, title: "Iron Man", rating: "PG-13",...>
#To create this resource
# rails g resource Review name:string stars:integer comment:text movie:references --no-test-framework
#To destroy
# rails destroy resource Review name:string stars:integer comment:text movie:references --no-test-framework
# >> review.errors.full_messages
# => ["Name can't be blank", "Comment is too short (minimum is 4 characters)", "Stars must be between 1 and 5"]

# 2.0.0-p598 :017 > movie.destroy
#    (0.2ms)  begin transaction
#   SQL (0.8ms)  DELETE FROM "reviews" WHERE "reviews"."id" = ?  [["id", 10]]
#   SQL (0.1ms)  DELETE FROM "reviews" WHERE "reviews"."id" = ?  [["id", 11]]
#   SQL (0.4ms)  DELETE FROM "movies" WHERE "movies"."id" = ?  [["id", 13]]
