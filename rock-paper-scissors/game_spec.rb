require_relative 'game'

class FakeOpponent
  def hand
    :paper
  end
end

describe 'Game' do
  before(:each) do
    @game = Game.new(FakeOpponent.new)
    @initial_score = @game.score
  end

  context 'when I win an opponent' do
    it 'increases my score' do
      @game.play(:scissors)

      expect(@game.score).to be >= @initial_score
    end
  end

  context 'when I lose against an opponent' do
    it 'decreases my score' do
      @game.play(:rock)

      expect(@game.score).to be <= @initial_score
    end
  end
end
