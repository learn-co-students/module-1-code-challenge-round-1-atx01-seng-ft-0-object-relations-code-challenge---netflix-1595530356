# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


desperado = Movie.new("Desperado")
star_wars = Movie.new("Star Wars")
lion_king = Movie.new("Lion King")

chris = Viewer.new("Chris392")
adan = Viewer.new("Adan_D")
bobby = Viewer.new("Bob_oso")


rev1 = Review.new(chris, desperado, 10)
rev2 = Review.new(adan, lion_king, 7)
rev3 = Review.new(bobby, star_wars, 5)
rev4 = Review.new(chris, star_wars, 8)
rev5 = Review.new(adan, desperado, 8)
rev6 = Review.new(bobby, lion_king, 4)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
