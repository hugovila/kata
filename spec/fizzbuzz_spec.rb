
require './fizzbuzz'

RSpec.describe FizzBuzz do

  it "return the same number" do
    expect(FizzBuzz.fizzbuzz(1)).to eq(1)
    expect(FizzBuzz.fizzbuzz(2)).to eq(2)
  end

  it "return Fizz for number 3" do
  	expect(FizzBuzz.fizzbuzz(3)).to eq("Fizz")
  end

  it "return Buzz for number 5" do
  	expect(FizzBuzz.fizzbuzz(5)).to eq("Buzz")
  end

end