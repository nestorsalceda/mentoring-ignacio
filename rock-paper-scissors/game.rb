class Rules
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

class RealGame
  def initialize
    @game = Game.new
    @choices = [:scissors, :rock, :paper]
    @score = 0
  end

  def play(hand)
    choice = @choices.sample
    winner = @game.play(hand, choice)
    score += 1 if hand == winner
    score -=1 if choice == winner
    output(choice,hand)
  end

  private

  def output(choice, hand)
    puts 'Playing: ', hand, choice
    puts 'And winner is: ', winner
    puts 'Score: ', score
  end
end

