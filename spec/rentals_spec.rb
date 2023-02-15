require_relative '../book'
require_relative '../person'
require_relative '../rentals'

describe do
  context 'Testing the rentals class' do
    title = 'Algorithm and data structure'
    author = 'Peter chendi'
    book = Book.new(title, author)
    person = Person.new(34, 'Robert')
    date = '2023/04/06'
    rental = Rentals.new(date, person, book)

    it 'should validate the date of the rental' do
      expect(rental.date).to eql date
    end

    it 'should validate the book rented' do
      expect(rental.book).to eql book
    end
  end
end
