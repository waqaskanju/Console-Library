# Create a class Classroom

class Classroom
  # Setter and getter for @label
  attr_accessor :label
  # reader of the other end of relation
  attr_reader :students

  def initialize(label)
    @label = label
    # an empty arrray to add many students to this class
    @students = []
  end

  # Actual method for adding students
  def add_student(student)
    # adding a student to a classroom it also sets the classroom for the student
    @students.push(student)
    student.classroom = self
  end
end
