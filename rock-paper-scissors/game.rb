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

  def winner(hand1, hand2)
    return @winners[hand1][hand2]
  end
end

class Game
  attr_reader :score
  def initialize(opponent)
    @rules = Rules.new
    @opponent = opponent
    @score = 0
  end

  def play(hand)
    opponent_hand = @opponent.hand
    winner = @rules.winner(hand, opponent_hand)
    compute_score(hand, opponent_hand, winner)
  end

  private

  def compute_score(hand, opponent_hand, winner)
    @score += 1 if hand == winner
    @score -=1 if opponent_hand == winner
  end
end

class Opponent
  def initialize
    @choices = [:scissors, :rock, :paper]
  end

  def hand
    @choices.sample
  end
end
