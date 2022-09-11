require './app'
require './book'
require './student'
require './teacher'
require './rental'

class Main
  include App

  def initialize
    @books = []
    @peoples = []
    @rentals = []
  end

  def main
    puts 'Welcome to School Library Console App'
    puts "----------------------------\n\n\n"
    puts 'Please choose a number to show given option:'
    puts '1 - List all Books'
    puts '2 - List all Persons'
    puts '3 - Create a Person'
    puts '4 - Create a Book'
    puts '5 - Create a Rental for Book'
    puts '6 - Show all rentals of a given a person'
    puts "7 - Exit \n\n\n"
    user_option = gets.chomp
    display(user_option)
  end

  def display(user_option)
    case user_option
    when '1'
      list_books(@books)
      main
    when '2'
      list_persons(@peoples)
      main
    when '6'
      filter_rental
      main
    when '7'
      puts '------------'
      puts 'Thanks! For Using for App'
      puts '------------'
    else
      add(user_option)
    end
  end

  def add(user_option)
    case user_option
    when '3'
      add_person
      main
    when '4'
      add_book
      main
    when '5'
      rental_add
      main
    end
  end

  def filter_rental
    if @peoples.empty? || @rentals.empty?
      puts 'No people or rentals present'
    else
      puts 'Select a person using the  id'
      @peoples.each_with_index { |people, index| puts "#{index}: #{people.name}" }
      id = gets.chomp.to_i
      list_rentals(@rentals, @peoples[id].name)
    end
  end

  def add_person
    puts 'Do you want to add Student (1) or Teacher (2) :'
    add_person_choice = gets.chomp
    case add_person_choice
    when '1'
      student_add
    when '2'
      teacher_add
    end
  end

  def student_add
    puts 'Adding a new student...'
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Do the student has Parent Permission [Y/N]: '
    permission = gets.chomp
    print 'Classroom: '
    classroom = gets.chomp
    parent_permission = get_permission(permission)
    create_person(@peoples, Student.new(age, name, parent_permission, classroom))
    puts "New Student added sucessfully! \n\n\n"
  end

  def teacher_add
    puts 'Adding a new Teacher...'
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    create_person(@peoples, Teacher.new(age, name, specialization))
    puts "New Teacher added Successfully! \n\n\n"
  end

  def add_book
    puts 'Adding a new Book...'
    print 'Book Title: '
    title = gets.chomp
    print 'Book Author: '
    author = gets.chomp
    create_book(@books, Book.new(title, author))
    puts "New book added successfully! \n\n"
  end

  def rental_add
    puts 'Adding Rental for a book ...'
    if @books.empty?
      puts "\n No book currenlty available to rent \n"
    elsif @peoples.empty?
      puts "\n No one is registered yet \n"
    else
      puts 'Select a Book: '
      @books.each_with_index { |book, index| puts "#{index}: #{book.title} (#{book.author}) " }
      rent_book_id = gets.chomp.to_i
      @peoples.each_with_index { |people, index| puts "#{index}: #{people.name}" }
      rental_people_id = gets.chomp.to_i
      create_rental(@rentals, Rental.new(@books[rent_book_id], @peoples[rental_people_id]))
      puts "Rental has been sucessfully created! \n\n"
    end
  end

  def get_permission(permission)
    return true if permission.upcase == 'Y'

    false
  end
end

main = Main.new
main.main
