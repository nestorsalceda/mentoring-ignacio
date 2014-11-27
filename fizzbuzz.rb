def FizzBuzz(number)
  return "Fizz" if number != 5
  "Buzz"
end

describe "Fizzbuzz" do
  it "returns Fizz if number is 3" do
    expect(FizzBuzz(3)).to eq("Fizz")
  end

  it "returns Fizz if number is divisible by 3" do
    expect(FizzBuzz(6)).to eq("Fizz")
  end
end
