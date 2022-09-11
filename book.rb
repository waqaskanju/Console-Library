require_relative './rental'
# Create a class Book
class Book
  # add @title and @author instance variables,
  # should be initialized in the constructor
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, person, self)
    @rentals.push(rental)
    @rentals << rental unless rentals.includes?(rental)
  end
end
