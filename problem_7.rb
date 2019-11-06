def prime
  array = [0, 0]
  2.upto(700000000) do |num|
    prime = true
    2.upto(num - 1) do |newnum|
      if num % newnum == 0
        prime = false
      end
    end
    array[0] = num if prime == true
    array[1] += 1 if prime == true
    break if array[1] == 10001
  end

  array[0]
end

p prime
