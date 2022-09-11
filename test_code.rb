require_relative './person'
require_relative './book'
require_relative './classroom'
require_relative './rental'

person1 = Person.new('waqas', 19)

book1 = Book.new('Game of thrones', 'J Martin')

rent1 = Rental.new(book1, person1)

p rent1.rentals
