# frozen_string_literal: true

require_relative './person'

# Defination of Student Class
class Student < Person
  def initialize(*args, classroom)
    super(*args)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
