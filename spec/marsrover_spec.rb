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
  	expect(MarsRover.new([2, 4], :N).move("bb")).to eq([2, 2])
  	expect(MarsRover.new([2, 4], :N).move("bbb")).to eq([2, 1])
  end
  it "should move forward and backward for 'fb' commands" do
  	expect(MarsRover.new([2, 4], :W).move("bfb")).to eq([2, 3])
  	expect(MarsRover.new([2, 4], :W).move("fbf")).to eq([2, 5])
  end
  it "should move left for 'l' commands" do
  	expect(MarsRover.new([2, 4], :N).move("ll")).to eq([0, 4])
  	expect(MarsRover.new([2, 4], :N).move("lll")).to eq([-1, 4])
  end
  it "should move right for 'r' commands" do
  	expect(MarsRover.new([2, 4], :S).move("rr")).to eq([4, 4])
  	expect(MarsRover.new([2, 4], :S).move("r")).to eq([3, 4])
  end
end