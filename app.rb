require_relative 'book'

class App
    def initialize
        @books = []
end
 
def list_books
  @books.each do |book|
    puts "Title: #{book.title} and Author: #{book.author}"
end
end