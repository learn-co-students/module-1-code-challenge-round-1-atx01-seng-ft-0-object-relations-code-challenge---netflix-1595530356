class Movie
  attr_accessor :movie

  @@all = []
  
  def initialize(movie)
    @movie = movie
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |reviews|
      reviews.movie == self
    end
  end

  def reviewers
      self.reviews.map do |review|
        review.viewer
      end
    end

  def ratings
    self.reviews.collect do |review|
      review.rating
    end
  end

  def average_rating
    self.ratings.sum / self.ratings.count
  end

  def self.highest_rated
    binding.pry
  end

end
