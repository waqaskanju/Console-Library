# frozen_string_literal: true

require_relative './person'

# Defination of Teacher Class
class Teacher < Person
  def intitialize(*_args, specialization)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
