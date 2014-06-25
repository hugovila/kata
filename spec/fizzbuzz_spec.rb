

require './fizzbuzz'


RSpec.describe FizzBuzz do

  # (1...100).each do |number|
  # 	it "return de same number for #{number}" do
  # 		expect(fb.fizzbuzz(number)).to eq(number)
  # 	end
  # end

  fb = FizzBuzz.new

  it "return 1" do
    expect(fb.fizzbuzz(1)).to eq(1)
  end
  it "return 2" do
  	expect(fb.fizzbuzz(2)).to eq(2)
  end
  it "return Fizz for multiple 3" do
  	expect(fb.fizzbuzz(3)).to eq("Fizz")
  end
  it "return 4" do
  	expect(fb.fizzbuzz(4)).to eq(4)
  end
  it "return Buzz for multiple 5" do
  	expect(fb.fizzbuzz(5)).to eq("Buzz")
  end
  it "return Fizz for multiple 3: (6)" do
  	expect(fb.fizzbuzz(6)).to eq("Fizz")
  end
  it "return 7" do
  	expect(fb.fizzbuzz(7)).to eq(7)
  end
  it "return 8" do
  	expect(fb.fizzbuzz(8)).to eq(8)
  end
  it "return Fizz for multiple 3: (9)" do
  	expect(fb.fizzbuzz(9)).to eq("Fizz")
  end
  it "return Buzz for multiple 5: (10)" do
  	expect(fb.fizzbuzz(10)).to eq("Buzz")
  end
  it "return FizzBuzz for multiple 3 and 5" do
  	expect(fb.fizzbuzz(15)).to eq("FizzBuzz")
  end

  it "return Fizz also if number 3 is inside" do
  	expect(fb.fizzbuzz(13)).to eq("Fizz")
  end

end

