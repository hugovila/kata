
class FizzBuzz

  def self.fizzbuzz(number)
    result = number
    result = "Fizz" if a_fizz?(number)
    result = "Buzz" if a_buzz?(number)
    result
  end

  def self.a_fizz?(number)
  	number % 3 == 0
  end

  def self.a_buzz?(number)
    number % 5 == 0
  end
end



