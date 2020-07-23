# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")

sohyun = Viewer.new("Sohyunc1990")
cymbi = Viewer.new("Cymbi")
neeko = Viewer.new("Neeko")

review1 = Review.new(sohyun, movie1, 4)
review2 = Review.new(sohyun, movie3, 4)
review3 = Review.new(cymbi, movie1, 3)
review4 = Review.new(cymbi, movie2, 5)
review5 = Review.new(neeko, movie2, 3)
review6 = Review.new(neeko, movie1, 6)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
