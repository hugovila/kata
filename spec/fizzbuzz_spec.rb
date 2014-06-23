# fizzbuzz_spec.rb

require './fizzbuzz'

fb = Fizzbuzz.new

RSpec.describe "FizzBuzz" do

  it "return 1" do
  	expect(fb.fizzbuzz(1)).to eq(1)
  end

end

