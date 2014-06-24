# mars_rover_spec.rb

require './mars_rover'


describe MarsRover do

  let(:mr) { MarsRover.new(Position.new(2,4), :N) }

  it "reports its position" do
    expect(mr.position).to eq(Position.new(2,4))
  end

  it "reports its facing" do
  	expect(mr.facing).to eq(:N)
  end

  it "moves forward" do
  	mr.execute("fff")
    expect(mr.position).to eq(Position.new(2,7))
  end

  it "moves backward" do
  	mr.execute("bb")
    expect(mr.position).to eq(Position.new(2,2))
  end

  it "moves forward and backward" do
  	mr.execute("ffbbfffbfbbbb")
    expect(mr.position).to eq(Position.new(2,3))
  end

  it "moves left" do
  	mr.execute("lll")
    expect(mr.position).to eq(Position.new(-1,4))
  end

  it "moves rigth" do
  	mr.execute("rrr")
    expect(mr.position).to eq(Position.new(5,4))
  end

  it "moves left and rigth" do
  	mr.execute("llrrrlr")
    expect(mr.position).to eq(Position.new(3,4))
  end

  it "moves forward, backward, left and rigth" do
  	mr.execute("fllrrbfrlrf")
    expect(mr.position).to eq(Position.new(3,6))
  end

end

