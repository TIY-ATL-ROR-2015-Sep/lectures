require "pry"
require "set"

WINS = [1,2,3,4]


class Cookie
  def eat
    binding.pry
    puts "This is friggin delicious!"
  end
end

binding.pry

# THIS IS IGNORED INSIDE A CLASS
def does
  puts "ALL THE THINGESSSS!!!eleventy"
end

class Student
  def initialize(first_name, last_name)
    @name = "#{first_name} #{last_name}"
  end

  def first_name
    @name.split(" ")[0]
  end

  def last_name
    @last.split(" ")[1]
  end

  def name
    @name
  end

  def name=(new_name)
    puts "I do what I want!"
    @name = new_name
  end

  def does(a_thing)
    puts "#{@name} does #{a_thing}"
  end

  def foo
    self.does(" some lecturing. sleepily.")
  end
end

class Player
  def initialize
    @guesses = Set.new
    @piece = choose_piece
  end

  def choose_piece
    puts "Please choose a piece 'X' or 'O'"
    choice = gets.chomp.upcase
    until ['X', 'O'].include?(choice)
      puts "You have to choose 'X' or 'O'!"
      choice = gets.chomp.upcase
    end
    choice
  end
end





class ClassroomMaker
  def initialize
    @students = []
  end

  def get_students
    puts "Would you like to add a student? (yes/no)"
    answer = gets.chomp

    until answer == "no"
      puts "What is the student's first name?"
      first_name = gets.chomp
      puts "What is the student's last name?"
      last_name = gets.chomp
      puts "Thank you."
      @students.push(Student.new(first_name, last_name))

      puts "\n\nWould you like to add another? (yes/no)"
      answer = gets.chomp
    end

    puts "The students are: #{@students}"
  end
end

# classroom = ClassroomMaker.new
# classroom.get_students
