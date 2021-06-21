class Game
  attr_accessor :current_player, :winner
  attr_reader :question
  def initialize
    @current_player = 1
    @winner = nil
    @question = Question.new
  end

  def declare_winner(winner)
    @winner = winner
  end

  def ask_q(player)
    puts "#{player.name}: "
    player.answer_question(@question.gen_question)
  end

  def start(p1, p2)
    while p1.lives > 0 && p2.lives > 0
      if current_player == 1
        self.ask_q(p1)
        if(p1.lives == 0)
          self.declare_winner(p2)
        end
        @current_player = 2
      else
        self.ask_q(p2)
        if(p1.lives == 0)
          self.declare_winner(p1)
        end
        @current_player = 1
      end
    end
  puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end