require_relative 'app'

# rubocop:disable Metrics/MethodLength

class Main
  def main
    app = App.new
    puts 'Welcome to School Library App!'
    option = nil
    app.load_books
    app.load_people
    while option != '7'
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      option = gets.chomp
      app.functions(option)
      app.load_rentals
    end
    app.save_books
    app.save_person
    app.save_rentals
    puts 'Thank you for using this app!'
  end
end

# rubocop:enable Metrics/MethodLength,

application = Main.new
application.main
