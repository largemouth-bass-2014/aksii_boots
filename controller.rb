require_relative 'config/application'

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

      boot.guess
      boot.display_result_message
    end
  end


end

puts "Please enter your username"

controller = Controller.new(gets.chomp)
controller.run
