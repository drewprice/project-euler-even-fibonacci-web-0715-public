def even_fibonacci_sum(limit)
  sequence = [1, 2]

  sequence << sequence[-1] + sequence[-2] while sequence[-1] + sequence[-2] < limit

  sequence.select(&:even?).reduce(&:+)
end
