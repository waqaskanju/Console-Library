require './nameable'
require './rental'

# Description/Explanation of Person class
# Turn your Person class to Nameable
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    value = false
    value = true if @parent_permission == true || of_age?
    value
  end

  # implemented the interface
  def correct_name
    @name
  end

  def add_rental(book, _date)
    rental = Rental.new(data, self, book)
    @rentals.push(rental)
    rentals << rental unless rentals.includes?(rental)
  end

  private

  def of_age?
    value = false
    value = true if @age >= 18
    value
  end
end
