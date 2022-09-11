# APP Module
# Serve as our  console app entry-point.
module App
  # it will list the books if exisits
  def list_books(books)
    if books.empty?
      puts 'Books not added.'
    else
      # loop throught book array
      books.each do |book|
        puts "Book Title: #{book.title}"
        puts "Book Author #{book.author}"
      end
    end
  end

  # show teachers and students if exists
  def list_persons(persons)
    if persons.empty?
      puts 'Persons not added'
    else
      # loop through persons array.
      persons.each do |person|
        puts "Id: #{person.id}"
        puts "Name:  #{person.name}"
        puts "Age: #{person.age}"
      end
    end
  end

  # show rentals if exits
  def list_rentals(rentals, name)
    if rentals.empty?
      puts "No rentals added for person: #{name}!"
    else
      puts 'Showing Saved Rentals... : '
      # loop througt rentals
      rentals.each do |rental|
        next if rental.person.name != name

        puts "Date: #{rental.date}"
        # call function in rental class to show persion and book
        puts rental.rentals
      end
    end
  end

  # create a person and save in persons array
  def create_person(persons, person)
    persons.push(person)
  end

  # create a book and save in books array
  def create_book(books, book)
    books.push(book)
  end

  # create a rentals and save in rentals array
  def create_rental(rentals, rental)
    rentals.push(rental)
  end
end
