require_relative './person'

# Defination of Student Class
class Student < Person
  def initialize(*args, classroom)
    super(*args)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end

std = Student.new(15, '7th')
p std
