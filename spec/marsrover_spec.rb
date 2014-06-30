
require './marsrover.rb'

RSpec.describe MarsRover do 
	
  it "should return its own position" do
  	mr = MarsRover.new([2, 4], :N)
    expect(mr.position()).to eq([2, 4])
  end

  it "should return its own direction" do
  	mr = MarsRover.new([2, 4,], :E)
    expect(mr.direction()).to eq(:E)
  end

  it "should move forward for 'f' commands" do
    mr = MarsRover.new([2, 4], :N)
    expect(mr.move("fff")).to eq([2, 7])
    expect(mr.move("ffff")).to eq([2, 11])
  end
	
  it "should move backward for 'b' commands" do
  	mr = MarsRover.new([2, 4], :E)
  	expect(mr.move("bb")).to eq([2, 2])
  end

  it "should move left for 'l' commands" do
  	mr = MarsRover.new([2,4], :S)
  	expect(mr.move("lll")).to eq([-1, 4])
  end

end