# fizzbuzz_spec.rb

require './fizzbuzz'

fb = Fizzbuzz.new

RSpec.describe "Fizzbuzz" do

  it "return same number" do
  	expect(fb.fizzbuzz(1)).to eq(1)
  	expect(fb.fizzbuzz(2)).to eq(2)
  end

end

