class Movie
  attr_accessor :title

  @@all = []
  # @@average = []

  def initialize(title)
    @title = title
    self.class.all << self
    # self.average_all << self.ratings
  end


  def reviews
    Review.all.select do |reviews|
      reviews.movie == self
    end
  end

  def reviewers
    reviews.map do |reviews|
      reviews.viewer
    end
  end
 
  def ratings
    reviews.map do |reviews|
      reviews.rating
    end
  end

  def average_rating
    ratings.sum.to_f / ratings.length
  end

  # def self.average_all
  #   @@average
  # end

  def self.highest_rated
    binding.pry
  end


  # - `Movie.highest_rated`
  # - returns the `Movie` instance with the highest average rating.



  def self.all
    @@all
  end

end
