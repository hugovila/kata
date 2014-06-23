# fizzbuzz_spec.rb

require './fizzbuzz'

fb = Fizzbuzz.new

RSpec.describe "FizzBuzz" do

  it "return the same number" do
  	expect(fb.fizzbuzz(1)).to eq(1)
  	expect(fb.fizzbuzz(2)).to eq(2)
  end

  it "return Fizz for number 3" do
  	expect(fb.fizzbuzz(3)).to eq("Fizz")
  end

end

