class Fixnum
  def isBuzz?
    self % 5 == 0
  end

  def isFizz?
    self % 3 == 0
  end

  def fizzBuzz
    return "FizzBuzz" if isBuzz? and isFizz?
    return "Buzz" if isBuzz?
    return "Fizz" if isFizz?
    self.to_s
  end
end

describe "Fizzbuzz" do
  it "returns Fizz if number is 3" do
    expect(3.fizzBuzz).to eq("Fizz")
  end

  it "returns Fizz if number is divisible by 3" do
    expect(6.fizzBuzz).to eq("Fizz")
  end

  it "returns Buzz if number is 5" do
    expect(5.fizzBuzz).to eq("Buzz")
  end

  it "returns Buzz if number is divisible by 5" do
    expect(10.fizzBuzz).to eq("Buzz")
  end

  it "returns FizzBuzz if number is divisible by 3 and 5" do
    expect(15.fizzBuzz).to eq("FizzBuzz")
  end

  it "returns same number if is not Fizz or Buzz or FizzBuzz" do
    expect(1.fizzBuzz).to eq("1")
  end
end
