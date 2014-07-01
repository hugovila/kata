require './marsrover'

RSpec.describe MarsRover do
  it "should return its own position" do
    expect(MarsRover.new([2, 4], :N).position).to eq([2, 4])
  end
  it "should return its own direction" do
  	expect(MarsRover.new([2, 4], :E).direction).to eq(:E)
  end
  it "should move forward for 'f' commands" do
  	expect(MarsRover.new([2, 4], :E).move("ff")).to eq([2, 6])
  	expect(MarsRover.new([2, 4], :E).move("fff")).to eq([2, 7])
  end
  it "should move backward for 'b' commands" do
  	expect(MarsRover.new([2, 4], :N).move("bb")).to eq([2, 6])
  	expect(MarsRover.new([2, 4], :N).move("bbb")).to eq([2, 7])
  end
end