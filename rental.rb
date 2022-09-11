# Create a class Rental
class Rental
  # Setter and getter for @date
  attr_accessor :date, :book, :person

  def initialize(book, person, date = Time.now)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def rentals
    "#{@book.title}: #{@person.name} #{@date}"
  end
end
