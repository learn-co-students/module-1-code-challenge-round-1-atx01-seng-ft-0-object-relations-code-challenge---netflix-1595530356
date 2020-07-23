class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  

  def reviews
    Review.all.select do |reviews|
      reviews.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |reviews|
      reviews.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rev_movie_rating(movie)
    reviews.map do |reviews|
      reviews.rating == movie
    end
  end

  def rate_movie(movie, rating)
    binding.pry
    if reviewed_movies == movie
        rev_movie_rating = rating
      else
          Review.new(self, movie, rating)
     end
  end


  # - `Viewer#rate_movie(movie, rating)`
  # - a `Movie` instance and a rating (number) are passed in as arguments
  # - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  # - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance



end
