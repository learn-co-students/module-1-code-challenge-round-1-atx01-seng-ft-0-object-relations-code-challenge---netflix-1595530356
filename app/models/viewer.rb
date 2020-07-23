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
    Review.all.select {|review| review.viewer == self}
  end


  def reviewed_movies
    reviews.map {|review| review.movie}
  end

  

  def reviewed_movie?(movie)
  reviewed_movies.any?(movie)
  end
 
  
  
  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.select do |review| 
        if review.movie == movie
        review.rating = rating
        end    
      end    
    else
    Review.new(self, movie, rating)
  end
end

end
