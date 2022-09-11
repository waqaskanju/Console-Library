require_relative './person'

# Defination of Student Class
class Student < Person
  # for one-to-many relationship
  attr_reader :classroom

  def initialize(*args, classroom)
    super(*args)
    @classroom = classroom
  end

  # To adopt to both way relatioship
  # when setting the classroom for a student it also adds it to the classrooms' students.

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.student.include(self)
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end

# For Testing...
# p std = Student.new(24,"akhbar",false,"6th")
