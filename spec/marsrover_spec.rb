
require './marsrover'

RSpec.describe MarsRover do 
  it "should return its own position" do
    expect(MarsRover.new([2, 4], :N).position()).to eq([2, 4])
  end
  it "should return its own direction" do
  	expect(MarsRover.new([2, 4], :E).direction).to eq(:E)
  end
  it "should move forward to 'f' commands" do
  	expect(MarsRover.new([2, 4], :S).move("ff")).to eq([2, 6])
  end
end