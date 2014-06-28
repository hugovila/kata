
require './marsrover'

RSpec.describe MarsRover do
	
  it "return its self position" do
    mr = MarsRover.new([2, 4], :N)
    expect(mr.position()).to eq([2, 4])
  end
	
end