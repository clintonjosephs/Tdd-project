class Solver
  def factorial(num, result = 1)
    raise ArgumentError if num.negative?

    if num.zero?
      result
    else
      factorial(num - 1, num * result)
    end
  end
end
