require_relative '../book'

describe Book do
  context 'Testing the book class to create a book' do
    title = 'Algorithm and data structure'
    author = 'Peter chendi'
    book = Book.new(title, author)

    it 'should validate the title of the book' do
      expect(book.title).to eql title
    end

    it 'should validate the author of the book' do
      expect(book.author).to eql author
    end
  end
end
