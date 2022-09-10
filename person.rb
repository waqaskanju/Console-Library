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
    true if can_use_services? || @parent_permission == true
    value
  end

  private

  def of_age?
    value = false
    value = true if @age > 18
    value
  end
end
