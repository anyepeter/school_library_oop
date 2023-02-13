require_relative 'app'

# rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength

class Main 
  def main
    app = App.new
    puts 'Welcome to School Library App!'
    option = nil
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
    end
    puts 'Thank you for using this app!'
  end
end

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength

application = Main.new
application.main
