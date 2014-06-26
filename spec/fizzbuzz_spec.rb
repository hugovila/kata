
require './fizzbuzz'

RSpec.describe FizzBuzz do

  it "return the same number" do
    expect(FizzBuzz.fizzbuzz(1)).to eq(1)
    expect(FizzBuzz.fizzbuzz(2)).to eq(2)
  end

end