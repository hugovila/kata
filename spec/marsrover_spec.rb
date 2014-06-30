
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
  	expect(MarsRover.new([2, 4], :S).move("ffff")).to eq([2, 8])
  end
  it "should move backward to 'b' commands" do
  	expect(MarsRover.new([2, 4], :W).move("bb")).to eq([2, 2])
  	expect(MarsRover.new([2, 6], :W).move("bbb")).to eq([2, 3])
  end
  it "should move forward and backward to 'fffbb' commands" do
  	expect(MarsRover.new([2, 4], :W).move("ffffbb")).to eq([2, 6])
  	expect(MarsRover.new([2, 6], :W).move("bbbf")).to eq([2, 4])
  end
end