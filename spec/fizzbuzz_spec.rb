# fizzbuzz_spec.rb

require './fizzbuzz'

fb = Fizzbuzz.new

RSpec.describe "Fizzbuzz" do

  it "return same number" do
  	expect(fb.fizzbuzz(1)).to eq(1)
  	expect(fb.fizzbuzz(2)).to eq(2)
  	expect(fb.fizzbuzz(4)).to eq(4)
  	expect(fb.fizzbuzz(7)).to eq(7)
  	expect(fb.fizzbuzz(8)).to eq(8)
  	expect(fb.fizzbuzz(11)).to eq(11)
  	expect(fb.fizzbuzz(13)).to eq(13)
  	expect(fb.fizzbuzz(14)).to eq(14)
  	expect(fb.fizzbuzz(16)).to eq(16)
  	expect(fb.fizzbuzz(19)).to eq(19)
  	expect(fb.fizzbuzz(22)).to eq(22)
  	expect(fb.fizzbuzz(23)).to eq(23)
  	expect(fb.fizzbuzz(26)).to eq(26)
  	expect(fb.fizzbuzz(28)).to eq(28)
  	expect(fb.fizzbuzz(29)).to eq(29)
  	expect(fb.fizzbuzz(31)).to eq(31)
  	expect(fb.fizzbuzz(34)).to eq(34)
  end

  it "return Fizz for number multiple 3" do
  	expect(fb.fizzbuzz(3)).to eq("Fizz")
  	expect(fb.fizzbuzz(6)).to eq("Fizz")
  	expect(fb.fizzbuzz(9)).to eq("Fizz")
  	expect(fb.fizzbuzz(12)).to eq("Fizz")
  	expect(fb.fizzbuzz(18)).to eq("Fizz")
  end

  it "return Buzz for number multiple 5" do
  	expect(fb.fizzbuzz(5)).to eq("Buzz")
  	expect(fb.fizzbuzz(10)).to eq("Buzz")
  end

  it "return FizzBuzz for number 15" do
  	expect(fb.fizzbuzz(15)).to eq("FizzBuzz")
  end

end

