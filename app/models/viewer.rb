class Viewer
  attr_accessor :username, :rating

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie) 
  end

  # def rate_movie(movie, rating)
  #   self.reviews.select do |review|
  #     if review.movie == movie
  #         rating =(rating)
  #   else
  #      Review.new(self, movie, rating)
  #   end
  # end
  # end



end
