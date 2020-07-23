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
  	Review.all.select do |reviews_for_movie|
  		reviews_for_movie.movie == self
  	end
  end

  def reviewers
  	reviews.map do |viewers|
  		viewers.viewer
  	end
  end

  def average_rating_helper
	Review.all.map do |ratings|
		ratings.rating
	end
  end
	
  def average_rating
	average_rating_helper.sum / average_rating_helper.length
  end

  def self.highest_rated
  	#I couldn't figure this one out in time.
  end

end
