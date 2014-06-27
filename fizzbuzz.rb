
class FizzBuzz
  
  FIZZ_NUMBER = 3
  BUZZ_NUMBER = 5


  def fizzbuzz(number)
    @number = number
    
    result = @number
    result = "Fizz" if fizz?
    result = "Buzz" if buzz?
    result = "FizzBuzz" if fizzbuzz?
    result
  end

  private

  def fizz?
  	divisible?(FIZZ_NUMBER) || include?(FIZZ_NUMBER)
  end

  def buzz?
  	divisible?(BUZZ_NUMBER) || include?(BUZZ_NUMBER)
  end

  def fizzbuzz?
  	fizz? && buzz?
  end

  def divisible?(other_number)
    @number % other_number == 0
  end

  def include?(other_number)
    @number.to_s.include? other_number.to_s
  end

end