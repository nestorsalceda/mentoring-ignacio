class String
  EQUIVALENCES = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }
  def to_arabic
    number = 0
    current = self.dup
    while not current.empty?
      roman, arabic = equivalence(current)
      current = current.sub(roman, '')
      number += arabic
    end

    return number
  end

  def equivalence(number)
    EQUIVALENCES.each do |roman, arabic|
      if number.start_with?(roman)
        return roman, arabic
      end
    end
  end
end

describe 'Roman numbers to Arabics' do

  it 'returns 1 when I' do
    expect('I'.to_arabic).to eq(1)
  end

  it 'returns 2 when II' do
    expect('II'.to_arabic).to eq(2)
  end

  it 'returns 3 when III' do
    expect('III'.to_arabic).to eq(3)
  end

  it 'returns 4 when IV' do
    expect('IV'.to_arabic).to eq(4)
  end

  it 'returns 5 when V' do
    expect('V'.to_arabic).to eq(5)
  end

  it 'returns 6 when VI' do
    expect('VI'.to_arabic).to eq(6)
  end

  it 'returns 7 when VII' do
    expect('VII'.to_arabic).to eq(7)
  end

  it 'returns 8 when VIII' do
    expect('VIII'.to_arabic).to eq(8)
  end

  it 'returns 9 when IX' do
    expect('IX'.to_arabic).to eq(9)
  end

  it 'returns 2999 when MMCMXCIX' do
    expect('MMCMXCIX'.to_arabic).to eq(2999)
  end
end
