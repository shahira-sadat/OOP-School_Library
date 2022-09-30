require_relative 'app'

def main
  puts "\nWelcome to the School Library System!\n".upcase
  app = App.new
  app.run
end

def options(num)
  case num
  when 1
    list_all_books
  when 2
    list_all_people
  when 3
    create_person
  when 4
    create_book
  when 5
    create_rental
  when 6
    list_rentals_by_id
  end
end

def extra_options(num)
  case num
  when 7
    list_all_students
  when 8
    list_all_teachers
  when 9
    print "Thanks"
    exit
  when 0
    print "\nPlease Enter a valid option\n".upcase
  end
end

def user_input
  puts "
        Please choose an option by entering a number from below:\n
        1 - List All Books
        2 - List All People
        3 - Create a Person
        4 - Create a Book
        5 - Create a Rental
        6 - List All Rentals for a Given Person ID
        7 - List All Students
        8 - List All Teachers
        9 - Exit"

  answer = gets.chomp.to_i
  options(answer)
  extra_options(answer)
  user_input
end

main
