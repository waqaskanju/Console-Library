# Create a class Rental
class Rental
  # Setter and getter for @date
  attr_accessor :date, :book, :person

  def initialize(person, book, date=Time.now)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
