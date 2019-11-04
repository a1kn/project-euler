value = 0
1.upto(999) do |num|
  value += num if num % 3 == 0 || num % 5 == 0
end
p value

