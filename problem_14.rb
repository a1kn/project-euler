chain = []
size = 0
value = 0

1.upto(999999) do |num|
  number = num
  chain << number
  loop do
    if number.odd?
      number = (number * 3) + 1
      chain << number
    else
      number = number / 2
      chain << number
    end
    break if number == 1
  end
  if chain.length > size
    size = chain.length
    value = num
  end
  chain = []
end


p value
