def sum_of_squares(number)
  value = 0
  1.upto(number) { |num| value += num * num }
  value
end

def sum_of_nats(number)
  value = 0
  1.upto(number) { |num| value += num }
  value * value
end


p (sum_of_nats(100) - sum_of_squares(100))
