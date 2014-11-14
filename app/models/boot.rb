class Boot < ActiveRecord::Base

  def display_image
    boot_pic = AsciiArt.new(self.image)
    puts boot_pic.to_ascii_art(width: 50)
  end

    def guess
    @user_guess = gets.chomp
    correct_answer?
  end

  def correct_answer?
    @user_guess == self.name
  end

  def display_result_message
    if correct_answer?
      puts "woohoooooo"
    else
      puts "sorry, the correct answer is #{self.name}."
    end
  end
end
