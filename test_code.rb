require_relative './person'
require_relative './book'
require_relative './classroom'
require_relative './rental'

person_1 = Person.new('waqas', 19)
person_2 = Person.new('Ali', 5)

book_1 = Book.new('Game of thrones', 'J Martin')
book_2 = Book.new('Lord of ring', 'Ruby')

p classroom = Classroom.new('6th')

p rental_1 = Rental.new('2020-01-02', person_1, book_1)
p rental_2 = Rental.new('2022-01-02', person_1, book_2)

p person_1.rentals.count

person_1.rentals.map { |rental| p rental.date }
