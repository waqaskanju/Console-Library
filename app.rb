# APP Module
# Serve as your console app entry-point.
module App
  def list_books(books)
    if books.empty?
      puts 'Books not added.'
    else
      books.each do |book|
        puts "Book Title: #{book.title}"
        puts "Book Author #{book.author}"
      end
    end
  end

  def list_persons(persons)
    if persons.empty?
      puts 'Persons not added'
    else
      persons.each do |person|
        puts "Id: #{person.id}"
        puts "Name:  #{person.name}"
        puts "Age: #{person.age}"
      end
    end
  end

  def list_rentals(rentals, name)
    if rentals.empty?
      puts "No rentals added for person: #{name}!"
      puts ' =================================='
    else
      puts 'Showing Saved Rentals... : '
      rentals.each do |rental|
        next if rental.person.name != name

        puts "Date: #{rental.date}"
        puts rental.rentals
      end
    end
  end

  def create_person(persons, person)
    persons.push(person)
  end

  def create_book(books, book)
    books.push(book)
  end

  def create_rental(rentals, rental)
    rentals.push(rental)
  end
end
