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
  def initialize(user_id)
    @user_id = user_id
    @all_boots = Boot.all
  end

  def validate_user

  end

  def run
    @all_boots.each do |boot|

    end
  end

  def display_image #Probably move to display later

  end

  def compare_guess

  end

  def correct_answer?
  end

  def update_correct_answers
  end
end
