require_relative './basedecorator'

class TrimmerDecorator < BaseDecorator
  # implement a method correct_name that makes sure that the output
  # of @nameable.correct_name has a maximum of 10 characters

  def correct_name
    @nameable.correct_name[0..9]
  end
end
