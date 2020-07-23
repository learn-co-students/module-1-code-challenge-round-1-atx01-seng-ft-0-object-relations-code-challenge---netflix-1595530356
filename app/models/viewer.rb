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

  def viewer_reviews
    Review.all.select do |review|
      review.viewer==self
    end
  end

  def reviewed_movies
    viewer_reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    Review.all.any? do |review|
      review.viewer == self && review.movie==movie
    end
  end

  def viewed_movie(movie, rating)
    Review.all.select do |review|
      if review.viewer !=self && review.movie==movie
        Review.new(self, movie, rating)
      elsif review.viewer ==self && review.movie == movie
        review.rating=rating
      end
    end
  end
  
end
