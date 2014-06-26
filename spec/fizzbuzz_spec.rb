
require './fizzbuzz'

RSpec.describe FizzBuzz do

  fb = FizzBuzz.new

  it "return the same number" do
    expect(fb.fizzbuzz(1)).to eq(1)
    expect(fb.fizzbuzz(2)).to eq(2)
  end

  it "return 'Fizz' for numbers multiple 3" do
  	expect(fb.fizzbuzz(3)).to eq("Fizz")
  	expect(fb.fizzbuzz(6)).to eq("Fizz")
  end

  it "return 'Buzz' for numbers multiple 5" do
  	expect(fb.fizzbuzz(5)).to eq("Buzz")
  	expect(fb.fizzbuzz(10)).to eq("Buzz")
  end

  it "return 'FizzBuzz' for numbers multiple 3 and 5" do
  	expect(fb.fizzbuzz(15)).to eq("FizzBuzz")
  	expect(fb.fizzbuzz(30)).to eq("FizzBuzz")
  end

  it "return 'Fizz' for numbers that include 3" do
  	expect(fb.fizzbuzz(13)).to eq("Fizz")
  end

  it "return 'Buzz' for numbers that include 5" do
  	expect(fb.fizzbuzz(52)).to eq("Buzz")
  end

end