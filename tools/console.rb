# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#viewers
tim = Viewer.new("Tim")
mike = Viewer.new("Mike")



#movies
taxi = Movie.new("Taxi Driver")
warriors = Movie.new("The Warriors")
kids = Movie.new("KIDS")



#reviews with variables to test
great_taxi= Review.new(tim, taxi, 10)
meh_taxi = Review.new(mike, taxi, 6)
good_warriors = Review.new(tim, warriors, 8) 


#examples 
#great_taxi.viewer => #<Viewer:0x00007ffa9c0e53a0 @username="Tim">
#great_taxi.movie => #<Movie:0x00007ffa9c0e5300 @title="Taxi Driver">

#tim.reviews => [#<Review:0x00007fc491a832e0 @movie=#<Movie:0x00007fc491a83470 @title="Taxi Driver">, @rating=10, @viewer=#<Viewer:0x00007fc491a836a0 @username="Tim">>,
#<Review:0x00007fc491a83290 @movie=#<Movie:0x00007fc491a83308 @title="The Warriors">, @rating=8, @viewer=#<Viewer:0x00007fc491a836a0 @username="Tim">>]


mike.rate_movie(warriors, 8)
tim.rate_movie(warriors, 6)
tim.rate_movie(kids, 10)
mike.rate_movie(kids, 10)
#I figured adding a 0 would work but an interesting edge case
tim.rate_movie(kids, 0)
#a good idea to make sure non whole ratings work
tim.rate_movie(taxi, 8.7)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
