class Solver
  def factorial(num)
    raise ArgumentError, 'Wrong type of argument' if !num.is_a?(Integer) || num.negative?

    return 1 if num.zero?

    num * (factorial num - 1)
  end

  def reverse(str)
    raise ArgumentError, 'Wrong type of argument' if !str.is_a?(String)

    str.reverse
  end
end
