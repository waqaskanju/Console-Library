require_relative './person'

# Defination of Teacher Class
class Teacher < Person
  attr_accessor :specialization

  def initialize(*args, specialization)
    super(*args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

# For Testing
# p t= Teacher.new(24,"waqas","ms")
