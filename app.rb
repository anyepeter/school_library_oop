require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rentals'

class App
    def initialize
        @books = []
        @people = []
        @rentals = []
end
 
def list_all_books
  @books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
end

def list_all_people
    @people.each do |person|
        print "[#{person.class}] name: #{people.name}, ID: #{person.id}, #{person.age}"
end

def create_person 
    print "Do you want to create a student (1) or a teacher(2)? [Input the number]"
    response = gets.chomp.to_i
    case response
    when '1'
        print "Age:"
        age = get.chomp
        print "name:"
        name = get.chomp

        print "Has parent permission? [Y/N]:"
        permit = get.chomp
        case permit
        when 'Y','y'
        student.Student.new(age, name, true)
        @people.push(student)
        puts "Person created successfully"
        when 'N','n' 
        student.Student.new(age, name, false)
        @people.push(student)
        puts "Person created successfully"
        else 
            puts "invalid"    
        end
    when '2'
        print "Age:"
        age = get.chomp
        print "name:"
        name = get.chomp
        print "specialization:"
        specialization = get.chomp
        teacher = Teacher.new(specialization, age, name)
        @people.push(teacher)
        puts "Person created successfully"
    else
        puts "Invalid"
    end
end

def create_book
    print "Title:"
    title = get.chomp
    print "Author:"
    author = get.chomp

    book = Book.new(title, author)
    @books.push(book)
    puts "book created successfully"
end

def create_rental
    puts "Select a book from the following list of numbers"
    @books.each_with_index do |book, index|
        print "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    bk_index = gets.chomp.to_i

    puts "Select a person from the following list of numbers"
    @people.each_with_index do |person, index|
        print "#{index}) [#{person.class}] Name: #{person.name},  ID: #{person.id}, Age: #{person.age}"
    end
    pr_index = gets.chomp.to_i

    print "Date:"
    get_date = gets.chomp

    rental = Rentals.new(get_date, @people[pr_index] @books[bk_index])
    @rentals.push(rental)

    puts "Rental created successully"
end

def list_rentals
    puts "ID of person:"
    pr_id = gets.chomp.to_i
    @rentals do |rent|
        if rent.person.id == pr.id
            puts "Date:#{rent.date}, Book #{rent.book.title} by #{rent.book.author} borrowed by #{rent.person.name}"
        else 
            puts "Rentals:"
        end
    end
end
end