class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    fibonacci.select(&:even?).reduce(&:+)
  end

  private

  def fibonacci(sequence = [1, 2])
    next_num = sequence[-1] + sequence[-2]

    return sequence if next_num > limit

    fibonacci(sequence << next_num)
  end
end
