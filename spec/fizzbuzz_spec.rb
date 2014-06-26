
require './fizzbuzz'

RSpec.describe FizzBuzz do

  it "return the number 1" do
    expect(FizzBuzz.fizzbuzz(1)).to eq (1)
  end

end