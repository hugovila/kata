
class FizzBuzz

  def self.fizzbuzz(number)
    result = number
    result = "Fizz" if a_fizz?(number)
    result = "Buzz" if number == 5
    result
  end

  def self.a_fizz?(number)
  	number % 3 == 0
  end

end



