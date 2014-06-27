
class FizzBuzz
  
  FIZZ_NUMBER = 3
  BUZZ_NUMBER = 5

  def fizzbuzz(number)
    result = number
    result = "Fizz" if fizz?(number)
    result = "Buzz" if buzz?(number)
    result = "FizzBuzz" if fizzbuzz?(number)
    result
  end

  def fizz?(number)
  	divisible?(number, FIZZ_NUMBER) || include?(number, FIZZ_NUMBER)
  end

  def buzz?(number)
  	divisible?(number, BUZZ_NUMBER) || include?(number, BUZZ_NUMBER)
  end

  def fizzbuzz?(number)
  	fizz?(number) && buzz?(number)
  end

  def divisible?(number, other_number)
    number % other_number == 0
  end

  def include?(number, other_number)
    number.to_s.include? other_number.to_s
  end

end