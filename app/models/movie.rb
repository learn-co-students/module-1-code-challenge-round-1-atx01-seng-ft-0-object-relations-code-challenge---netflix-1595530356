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

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    Review.all.select.do |review|
      review.viewer == self.viewer
    end
  end
  
  def average_rating
    self.rating.all.sum / self.rating.all.count
  end

  def self.highest_rated
    new_arr = self.class.all.rating.sort { |b,a| b <=> a}
    new_arr[0]
  end

end
