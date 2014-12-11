require_relative 'game'

describe 'Rock Paper Scissors Rules' do
  before(:each) do
    @rules = Rules.new
  end

  context 'when winnering scissors' do
    it 'wins against paper' do
      winner = @rules.winner(:scissors, :paper)
      expect(winner).to eq(:scissors)
    end

    it 'loses against rock' do
      winner = @rules.winner(:scissors, :rock)
      expect(winner).to eq(:rock)
    end

    it 'ties against scissors' do
      winner = @rules.winner(:scissors, :scissors)
      expect(winner).to eq(:tie)
    end
  end

  context 'when winnering rock' do
    it 'wins against scissors' do
      winner = @rules.winner(:rock, :scissors)
      expect(winner).to eq(:rock)
    end

    it 'loses against paper' do
      winner = @rules.winner(:rock, :paper)
      expect(winner).to eq(:paper)
    end

    it 'ties against rock' do
      winner = @rules.winner(:rock, :rock)
      expect(winner).to eq(:tie)
    end
  end

  context 'when winnering paper' do
    it 'loses against scissors' do
      winner = @rules.winner(:paper, :scissors)
      expect(winner).to eq(:scissors)
    end

    it 'ties against paper' do
      winner = @rules.winner(:paper, :paper)
      expect(winner).to eq(:tie)
    end

    it 'wins against rock' do
      winner = @rules.winner(:paper, :rock)
      expect(winner).to eq(:paper)
    end
  end
end
