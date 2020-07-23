# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie_1 = Movie.new("Batman Begins")
movie_2 = Movie.new("The Dark Knight")

viewer_1 = Viewer.new("Gabe")
viewer_2 = Viewer.new("Bob")

review_1 = Review.new(viewer_1, movie_1, 5)
review_2 = Review.new(viewer_2, movie_2, 8)
review_3 = Review.new(viewer_2, movie_1, 7)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
