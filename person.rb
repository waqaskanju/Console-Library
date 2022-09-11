require './nameable'

# Description/Explanation of Person class
# Turn your Person class to Nameable
class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

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

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private

  def of_age?
    value = false
    value = true if @age >= 18
    value
  end
end
