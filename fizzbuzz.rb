

class FizzBuzz

  def fizzbuzz(a_number)
    result = a_number
    result = "Fizz"     if a_number % 3 == 0
    result = "Buzz"     if a_number % 5 == 0
    result = "FizzBuzz" if a_number % 15  == 0
    result = "Fizz"     if three_inside? a_number
    result
  end

  def three_inside? a_number
    result = a_number.to_s.each_char { |c| c == "3" }
    result
  end

end

