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
  end

  it "return Fizz for number multiple 3" do
  	expect(fb.fizzbuzz(3)).to eq("Fizz")
  	expect(fb.fizzbuzz(6)).to eq("Fizz")
  	expect(fb.fizzbuzz(9)).to eq("Fizz")
  end

  it "return Buzz for number 5" do
  	expect(fb.fizzbuzz(5)).to eq("Buzz")
  end

end

