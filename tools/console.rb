# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

space_mutiny=Movie.new("Space Mutiny")
final_sacrifice=Movie.new("Final Sacrifice")
final_justice=Movie.new("Final Justice")


mike=Viewer.new("Mike Nelson")
tom=Viewer.new("Tom Servo")
crow=Viewer.new("Crow")

mike_review_sm=Review.new(mike, space_mutiny, 1)
mike_review_fs=Review.new(mike, final_sacrifice, 1)
mike_review_fj=Review.new(mike, final_justice, 1)

tom_review_sm=Review.new(tom, space_mutiny, 1)
tom_review_fs=Review.new(tom, final_sacrifice, 2)

crow_review_sm=Review.new(crow, space_mutiny, 1)

tom.viewed_movie(final_justice, 3)
tom.viewed_movie(final_justice, 1)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
