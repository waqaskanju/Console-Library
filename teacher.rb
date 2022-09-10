require_relative './person'

# Defination of Teacher Class
class Teacher < Person
  def intitialize(*args, specialization)
    super(*args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

tr = Teacher.new(20, 'Vet')
p tr
