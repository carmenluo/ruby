class Player
  attr_accessor :lives
  def initialize(lives)
    @lives = lives
  end

  def deduct()
    self.lives -= 1
  end
end

p1 = Player.new(3)
puts p1.deduct

class Game
  attr_accessor :p1, :p2, :random1, :random2
  def initialize()
    @p1 = Player.new(3)
    @p2 = Player.new(3)
    @random1 = 0
    @random2 = 0
  end

  def genQuestions()
    self.random1 = rand(1..20)
    self.random2 = rand(1..20)
    question = "What does #{random1} plus #{random2} equal?"
  end
  def getAnswer()
    random1 + random2
  end
  def run()
    
  end
end
game = Game.new
puts game.genQuestions