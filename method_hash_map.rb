
FORWARD = "f"
BACKWARD = "b"


FUNCTION_MAP_SYM_KEY = { :forward => lambda{forward}, :backward => lambda{backward} }

FUNCTION_MAP_CONSTANT = { FORWARD => lambda{forward}, BACKWARD => lambda{backward} }

def forward
  puts "move forward"
end

def backward
  puts "move backward"
end