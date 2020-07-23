class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def movie_reviews
    Review.all.select do |review|
      review.movie==self
    end
  end

  def movie_viewers
    movie_reviews.map do |review|
      review.viewer
    end
  end

  def ratings
    self.movie_reviews.map do |review|
      review.rating
    end
  end

  def average_rating
    self.ratings.sum / self.ratings.count.to_f
  end

  def self.highest_rated
  end

end
