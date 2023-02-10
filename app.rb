require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'

class App
    def initialize
        @books = []
        @people = []
end
 
def list_all_books
  @books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
end

def list_all_people
    @people.each do |person|
        puts "[#{person.type}] name: #{people.name}, ID: #{person.id}, #{person.age}"
end

def create_person 
    print "Do you want to create a student (1) or a teacher(2)? [Input the number]"
    response = get.chomp
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
end