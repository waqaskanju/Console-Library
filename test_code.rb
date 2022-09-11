require_relative './person'
require_relative './book'
require_relative './classroom'
require_relative './rental'

person1 = Person.new('waqas', 19)
person2 = Person.new('Ali', 5)

book1 = Book.new('Game of thrones', 'J Martin')
book2 = Book.new('Lord of ring', 'Ruby')

rental1 = Rental.new('2020-01-02', person1, book1)
rental2 = Rental.new('2022-01-02', person2, book2)

person_1.rentals.count

person_1.rentals.map { |rental| p rental.date }

p rental1
p rental2
