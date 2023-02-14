require_relative './rentals'

class Book
  attr_accessor :title, :author, :rentals
  attr_reader :id

  def initialize(title, author)
    @id = Random.rand(1..1000)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end

  def recieve_items
    {
      id: @id,
      title: @title,
      author: @author
    }
  end
end
