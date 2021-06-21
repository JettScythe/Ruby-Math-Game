class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(expected_output)
    answer = gets.chomp.to_i
    if answer == expected_output
      puts "Correct! Next question:"
    else
      puts "Seriously? No!"
      self.lives -= 1
    end
  end
end