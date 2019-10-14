class Player
  attr_accessor :lives, :turn, :name
  def initialize(lives, turn, name)
    @name = name
    @lives = lives
    @turn = turn
  end

  def deduct()
    self.lives -= 1
  end
end


class Game
  attr_accessor :p1, :p2, :random1, :random2
  def initialize()
    @p1 = Player.new(3, true, "Player 1")
    @p2 = Player.new(3, false, "Player 2")
    @random1 = 0
    @random2 = 0

  end

  def genQuestions()
    self.random1 = rand(1..20)
    self.random2 = rand(1..20)
    question = "What does #{random1} plus #{random2} equal?"
  end
  def checkAnswer(current, ans)
    if ans.to_i == random1 + random2
      "Yes! You are correct."
    else
      current.lives -= 1
      "Seriously? No!"
    end
  end
  #decide which turn to answer
  def getTurn()
    if p1.turn
      p1
    else
      p2
    end
  end
  def checkScore(current)
    if current.lives == 0
      if current.name == "Player 1"
        "#{p2.name} wins with a score of #{p2.lives}/3"
      else
        "#{p1.name} wins with a score of #{p1.lives}/3"
      end
    else 
      "P1: #{p1.lives} vs #{p2.lives} "
    end
  end
  def run()
    current = getTurn
    puts "#{current.name}: #{genQuestions}"
    print " >"
    ans = $stdin.gets.chomp
    puts "#{current.name}: #{checkAnswer(current, ans)}"
    puts "#{current.lives}"

  end
end
game = Game.new
puts game.run