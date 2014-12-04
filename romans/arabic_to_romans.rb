class Fixnum
  EQUIVALENCES = {
    1000 => 'M',
    900 => 'CM',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
  }

  def to_roman
    result = ''
    actual = self

    while actual != 0 do
      arabic, roman = equivalence(actual)
      result += roman
      actual -= arabic
    end

    result
  end

  private

  def equivalence(number)
    EQUIVALENCES.each do |arabic, roman|
      if number >= arabic
        return arabic, roman
      end
    end
  end
end

describe 'Arabic numbers to romans' do
  it 'returns I when 1' do
    expect(1.to_roman).to eq('I')
  end

  it 'returns II when 2' do
    expect(2.to_roman).to eq('II')
  end

  it 'returns III when 3' do
    expect(3.to_roman).to eq('III')
  end

  it 'returns IV when 4' do
    expect(4.to_roman).to eq('IV')
  end

  it 'returns V when 5' do
    expect(5.to_roman).to eq('V')
  end

  it 'returns VI when 6' do
    expect(6.to_roman).to eq('VI')
  end

  it 'returns VII when 7' do
    expect(7.to_roman).to eq('VII')
  end

  it 'returns VIII when 8' do
    expect(8.to_roman).to eq('VIII')
  end

  it 'returns IX when 9' do
    expect(9.to_roman).to eq('IX')
  end

  it 'returns X when 10' do
    expect(10.to_roman).to eq('X')
  end

  it 'returns XI when 11' do
    expect(11.to_roman).to eq('XI')
  end

  it 'returns XII when 12' do
    expect(12.to_roman).to eq('XII')
  end

  it 'returns XIII when 13' do
    expect(13.to_roman).to eq('XIII')
  end

  it 'returns XIV when 14' do
    expect(14.to_roman).to eq('XIV')
  end

  it 'returns XV when 15' do
    expect(15.to_roman).to eq('XV')
  end

  it 'returns XVI when 16' do
    expect(16.to_roman).to eq('XVI')
  end

  it 'returns XVII when 17' do
    expect(17.to_roman).to eq('XVII')
  end

  it 'returns XVIII when 18' do
    expect(18.to_roman).to eq('XVIII')
  end

  it 'returns XIX when 19' do
    expect(19.to_roman).to eq('XIX')
  end

  it 'returns XX when 20' do
    expect(20.to_roman).to eq('XX')
  end

  it 'returns XXIV when 24' do
    expect(24.to_roman).to eq('XXIV')
  end

  it 'returns XXV when 25' do
    expect(25.to_roman).to eq('XXV')
  end

  it 'returns XXIX when 29' do
    expect(29.to_roman).to eq('XXIX')
  end

  it 'returns XXX when 30' do
    expect(30.to_roman).to eq('XXX')
  end

  it 'returns XXXIX when 39' do
    expect(39.to_roman).to eq('XXXIX')
  end

  it 'returns XL when 40' do
    expect(40.to_roman).to eq('XL')
  end

  it 'returns XLIX when 49' do
    expect(49.to_roman).to eq('XLIX')
  end

  it 'returns XC when 90' do
    expect(90.to_roman).to eq('XC')
  end

  it 'returns C when 100' do
    expect(100.to_roman).to eq('C')
  end

  it 'returns CD when 400' do
    expect(400.to_roman).to eq('CD')
  end

  it 'returns MCMXCIX when 1999' do
    expect(1999.to_roman).to eq('MCMXCIX')
  end
end

