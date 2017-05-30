class Restaurant
  #has many customers
  #has many reviews through customers
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
    #array of all restaurants
  end

  def find_by_name(name)
    self.all.detect {|full_name| full_name.name == name }
  end

  def self.reviews
    self.reviews.map {|review| review.restaurant}
  end

  def self.customers
    self.reviews.each do |review|
      review.customer
    end
  end

end


# + Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.
