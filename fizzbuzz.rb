
class FizzBuzz
  
  def fizzbuzz(number)
    result = number
    result = "Fizz" if fizz?(number) || include_fizz?(number)
    result = "Buzz" if buzz?(number)  || include_buzz?(number)
    result = "FizzBuzz" if fizzbuzz?(number)
    result
  end

  def fizz?(number)
  	number % 3 == 0
  end

  def include_fizz?(number)
  	number.to_s.include? "3"
  end

  def buzz?(number)
  	number % 5 == 0
  end

  def include_buzz?(number)
    number.to_s.include? "5"
  end

  def fizzbuzz?(number)
  	number % 15 == 0
  end

end