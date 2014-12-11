require_relative 'game'

describe 'Rock Paper Scissors Game' do
  before(:each) do
    @game = Game.new
  end

  context 'when playing scissors' do
    it 'wins against paper' do
      winner = @game.play(:scissors, :paper)
      expect(winner).to eq(:scissors)
    end

    it 'loses against rock' do
      winner = @game.play(:scissors, :rock)
      expect(winner).to eq(:rock)
    end

    it 'ties against scissors' do
      winner = @game.play(:scissors, :scissors)
      expect(winner).to eq(:tie)
    end
  end

  context 'when playing rock' do
    it 'wins against scissors' do
      winner = @game.play(:rock, :scissors)
      expect(winner).to eq(:rock)
    end

    it 'loses against paper' do
      winner = @game.play(:rock, :paper)
      expect(winner).to eq(:paper)
    end

    it 'ties against rock' do
      winner = @game.play(:rock, :rock)
      expect(winner).to eq(:tie)
    end
  end

  context 'when playing paper' do
    it 'loses against scissors' do
      winner = @game.play(:paper, :scissors)
      expect(winner).to eq(:scissors)
    end

    it 'ties against paper' do
      winner = @game.play(:paper, :paper)
      expect(winner).to eq(:tie)
    end

    it 'wins against rock' do
      winner = @game.play(:paper, :rock)
      expect(winner).to eq(:paper)
    end
  end
end
