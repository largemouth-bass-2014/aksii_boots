require 'asciiart'

=begin
0. User login
I. (Display Image from View)
II. Get user Input
  A. gets.chomp
III. Compare user input to Boots.table
IV.  Returns Right/Wrong with messaging
V. Store # Right in User.db
=end

class Controller
  def initialize(username)
    @user = User.find_or_create_by(user_name: username)
    @all_boots = Boot.all
  end

  def run
    @all_boots.each do |boot|
      boot.display_image
      compare_guess
      correct_answer?
      update_correct_answers
    end
  end

  def display_image #Probably move to display later
    boot_pic = AsciiArt.new(self.image)
    puts boot_pic.to_ascii_art
  end

  def correct_answer?
    guess = gets.chomp
    guess == boot.name
  end

  def display_result_message
    if compare_guess
      puts "woohoooooo"
    else
      puts "sorry, the correct answer is #{boot.name}."
    end
  end

  def update_correct_answers
    @user.number_correct += 1 if correct_answer?
  end
end
