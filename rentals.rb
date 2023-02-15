require_relative 'person'
require_relative 'book'

class Rentals
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date

    @person = person
    # person.rentals << self unless person

    @book = book
    # book.rentals << self unless book

  end

  def recieve_items
    {
      date: @date,
      person_id: @person&.id,
      book_id: @book&.id
    }
  end
end
