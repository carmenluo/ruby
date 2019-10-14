class Player
  attr_accessor :lives, :name
  def initialize(lives, name)
    @name = name
    @lives = lives
  end

  def deduct()
    self.lives -= 1
  end
end


class Game
  attr_accessor :p1, :p2, :random1, :random2
  def initialize()
    @p1 = Player.new(3, "Player 1")
    @p2 = Player.new(3, "Player 2")
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

  def checkScore(current)
    if current.lives == 0
      if current.name == "Player 1"
        "#{p2.name} wins with a score of #{p2.lives}/3"
      else
        "#{p1.name} wins with a score of #{p1.lives}/3"
      end
    else 
      "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3 "
    end
  end
  def changeTurn(current)
    if current.name == "Player 1"
      return p2
    else
      return p1
    end
  end
  def run()
    current = p1
    while (p1.lives != 0 && p2.lives != 0)
      puts "----- NEW TURN -----"
      puts "#{current.name}: #{genQuestions}"
      print "> "
      ans = $stdin.gets.chomp
      puts "#{current.name}: #{checkAnswer(current, ans)}"
      puts checkScore(current)
      current = changeTurn(current)
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
game = Game.new
puts game.run