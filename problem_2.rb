first = 0
second = 1

sum = 0
num1 = 0
while num1 < 4000000 do
  num = first + second # 8
  num1 = num # 8
  first = second # 5
  second = num # 8
  sum += num1 if num1 % 2 == 0
end
p sum
