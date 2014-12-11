class Game
  def initialize
    @winners = {}
    @winners[:scissors] = {}
    @winners[:scissors][:paper] = :scissors
    @winners[:scissors][:rock] = :rock
    @winners[:scissors][:scissors] = :tie
    @winners[:rock] = {}
    @winners[:rock][:scissors] = :rock
    @winners[:rock][:paper] = :paper
    @winners[:rock][:rock] = :tie
    @winners[:paper] = {}
    @winners[:paper][:scissors] = :scissors
    @winners[:paper][:rock] = :paper
    @winners[:paper][:paper] = :tie
  end

  def play(hand1, hand2)
    return @winners[hand1][hand2]
  end
end

class RandomGame
  def initialize
    @game = Game.new
    @choices = [:scissors, :rock, :paper]
  end

  def play(hand)
    choice = @choices.sample

    puts 'Playing: ', hand, choice

    winner = @game.play(hand, choice)

    puts 'And winner is: ', winner
  end
end

