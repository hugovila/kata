
require './marsrover'

RSpec.describe MarsRover do 

  it "should return its own position" do
    expect(MarsRover.new([4,8], :N).position).to eq([4,8]) 
  end
	it "should return its own direction" do
    expect(MarsRover.new([4,8], :N).direction).to eq(:N) 
  end

  it "should move forward for 'f' commands" do
    expect(MarsRover.new([4,8], :N).move("ff")).to eq([4, 10])
    expect(MarsRover.new([4,8], :N).move("fff")).to eq([4, 11])
  end
  it "should move backward for 'b' commands" do
    expect(MarsRover.new([4,8], :N).move("bb")).to eq([4, 6])
    expect(MarsRover.new([4,8], :N).move("bbb")).to eq([4, 5])
  end
  it "should move left for 'l' commands" do
    expect(MarsRover.new([4,8], :N).move("ll")).to eq([2, 8])
    expect(MarsRover.new([4,8], :N).move("lll")).to eq([1, 8])
  end

end