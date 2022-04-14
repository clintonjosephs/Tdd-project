class Solver
  def factorial(num, result = 1)
    raise ArgumentError if num.negative?

    if num.zero?
      result
    else
      factorial(num - 1, num * result)
    end
  end

  def reverse_str(str)
    str.chars.reverse.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
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
