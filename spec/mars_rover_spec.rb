# mars_rover_spec.rb

require './mars_rover'

mr = Mars_rover.new(2,4,:N)

RSpec.describe "Mars Rover" do

  it "Create new instance return position" do
  	expect(mr.my_position()).to eq([2,4])
  end

  it "Create new instance return also I look" do
  	expect(mr.i_look()).to eq(:N)
  end

  it "pass command f rest 1 to y position" do
  	expect(mr.i_move([:f])).to eq(3)
  end

end

