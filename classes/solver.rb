class Solver
  def factorial(num)
    raise ArgumentError, 'Cannot calculate factorial of a negative number' if num.negative?

    i = 1
    fac = 1
    while i <= num
      fac *= i
      i += 1
    end
    fac
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if ((num % 3).zero?) & ((num % 5).zero?)
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
