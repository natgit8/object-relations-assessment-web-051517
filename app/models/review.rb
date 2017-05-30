class Review
  #belongs to restaurants
  #belongs to customers
  attr_accessor :restaurants, :customers, :review

  @@all_reviews = []

  def initialize(restaurant, customer)
    @customer = customer
    @restaurant = restaurant
    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end

  def customer
    self.customer.each do |r| r.customer
    end
  end

  def restaurant
    self.restaurant.each do |review| review.restaurant
    end
  end

end


# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
