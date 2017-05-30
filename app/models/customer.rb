class Customer
  #has many reviews 
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    self.full_name
  end

  def find_by_name(name)
    @@all.detect {|full_name| full_name.name == name }
  end

  def self.all_names
    @@all
  end

  def find_all_by_first_name(name)
    self.all.find {|f_name| f_name.name == name}
  end

  def add_review(restaurant, content)
    review = Review.new(content)
    restaurant.review = self
    review
  end

end


# + Customer.all
#   + should return all of the customers
# + Customer.find_by_name(name)
#   + given a string of a full name, returns the first customer whose full name matches
# + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
# + Customer.all_names
#   + should return an array of all of the customer full names
# + Customer#add_review(restaurant, content)
#   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
