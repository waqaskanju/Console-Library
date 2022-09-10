# frozen_string_literal: true

# Description/Explanation of Person class
class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    value = false
    value = true if @parent_permission == true || of_age?
    value
  end

  private

  def of_age?
    value = false
    value = true if @age >= 18
    value
  end
end

# single parameter
me = Person.new(16)

# Return of can_use_services?
p me.can_use_services?
