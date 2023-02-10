require_relative 'book'
require_relative 'person'

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
end