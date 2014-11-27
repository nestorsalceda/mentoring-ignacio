def FizzBuzz(number)
  return "FizzBuzz" if number % 5 == 0 and number % 3 == 0
  return "Buzz" if number % 5 == 0
  "Fizz"
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
end
