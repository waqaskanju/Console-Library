require_relative './person'
require_relative './capitalizedecorator'
require_relative './trimmerdecorator'

person = Person.new(22, 'maximilianus')
puts 'Initial name'
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts 'Capitalize Name'
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts 'Trimmed Name'
p capitalized_trimmed_person.correct_name
