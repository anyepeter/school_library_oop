require_relative 'person'
require_relative 'book'

class Rentals
  attr_accessor :date, :rentals
  attr_reader :person, :book

  def initialize(date, person, book)
    @date = date

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end

  def recieve_items
    {
      date: @date,
      person: @person.name,
      book: @book.title
    }
  end
end
