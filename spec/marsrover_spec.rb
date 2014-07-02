
require './marsrover'

RSpec.describe MarsRover do 
  it "should return its own position" do
    expect(MarRover.new([4,8, :N])).to eq([4,8]) 
  end
	
end