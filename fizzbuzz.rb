def isBuzz?(number)
  number % 5 == 0
end

def isFizz?(number)
  number % 3 == 0
end

def FizzBuzz(number)
  return "FizzBuzz" if isBuzz? number and isFizz? number
  return "Buzz" if isBuzz? number
  return "Fizz" if isFizz? number
  number
end

describe "Fizzbuzz" do
  it "returns Fizz if number is 3" do
    expect(FizzBuzz(3)).to eq("Fizz")
  end

  it "returns Fizz if number is divisible by 3" do
    expect(FizzBuzz(6)).to eq("Fizz")
  end

  it "returns Buzz if number is 5" do
    expect(FizzBuzz(5)).to eq("Buzz")
  end

  it "returns Buzz if number is divisible by 5" do
    expect(FizzBuzz(10)).to eq("Buzz")
  end

  it "returns FizzBuzz if number is divisible by 3 and 5" do
    expect(FizzBuzz(15)).to eq("FizzBuzz")
  end

  it "returns same number if is not Fizz or Buzz or FizzBuzz" do
    expect(FizzBuzz(1)).to eq(1)
  end
end
