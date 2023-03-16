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
end
