# fizzbuzz_spec.rb

require './fizzbuzz'

fb = Fizzbuzz.new

RSpec.describe "Fizzbuzz" do

  it "return 1 for 1" do
  	expect(fb.fizzbuzz(1)).to eq(1)
  end

end

