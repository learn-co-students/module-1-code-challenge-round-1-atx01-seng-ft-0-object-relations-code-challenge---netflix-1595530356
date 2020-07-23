# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

lone_survivor = Movie.new("Lone Survivor")
viewer1 = Viewer.new("TG_Gonz")
review1 = Review.new(viewer1, lone_survivor, 8)

mitty = Movie.new("Walter Mitty")
review2 = Review.new(viewer1, mitty, 10)

super_8 = Movie.new("Super 8")
review3 = Review.new(viewer1, super_8, 4)

viewer2 = Viewer.new("hacker")
viewer3 = Viewer.new("cyclist")

review4 = Review.new(viewer1, super_8, 5)
review5 = Review.new(viewer2, super_8, 2)
review6 = Review.new(viewer3, super_8, 1)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
