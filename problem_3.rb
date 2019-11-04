def prime
  array = []

  2.upto(7000) do |num|
    prime = true
    2.upto(num - 1) do |newnum|
      if num % newnum == 0
        prime = false
      end
    end
    array << num if prime == true
  end

  array
end

def factor(prime, number, factors)
  done = false
  time = 0

  until done == true
    if number % prime[time] == 0
      factors << number / prime[time]
      number = number / prime[time]
      done = true
    else
      time += 1
    end
  end
  number
end

factors = []
number = 6857

until prime.include?(number)
number = factor(prime, number, factors)
end

p number
p factors
