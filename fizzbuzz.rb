# fizzbuzz.rb

class Fizzbuzz

  def fizzbuzz(a_number)
    result = a_number
    #result = 2 if a_number == 2
    #result = "Fizz" if a_number == 3 || a_number == 6
    result = "Fizz" if a_number % 3 == 0
    result = "Buzz" if a_number % 5 == 0
    return result
  end

end
