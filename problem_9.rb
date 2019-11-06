
1.upto(1000) do |number|
  (number + 1).upto(800) do |number2|
    number3 = number ** 2 + number2 ** 2
    if Math.sqrt(number3) + number + number2 == 1000 && Math.sqrt(number3) > number2
      puts (number * number2 * Math.sqrt(number3))
      break
    end
  end
end
