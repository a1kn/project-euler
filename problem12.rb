=begin

SOURCE:
https://projecteuler.net/problem=12

EXTRACT PROBLEM
- triangle number is sum of all numbers up to the number
- find triangle number and then find factors (num % number == 0)
- count factors

INPUT
- number that counts the factors of the triangle numbers

EXAMPLE
- first to have 6 divisors is 28

OUTPUT
- returns triangle number

EXPERIMENT / EDGE

ALGO
- define method "find_triangle" to find triangle number
  - given number, use inject to find iterate through num times to find sum
- define method "find_factor" to find factors of number
  - use "find_triangle" to get the triangle number and then iterate over
    to find factors
- define method 'divisible_triangle' to count divisors

=end

DIVISOR = 500

def find_triangle(num)
  (1..num).sum
end

def find_factor(num)
  triangle = find_triangle(num)
  divisors = []
  n = 1
  while n <= triangle ** 0.5
    if triangle.modulo(n) == 0
      divisors << n
      divisors << triangle / n unless triangle / n == n
    end
    n += 1
  end
  divisors.sort
end

def divisible_triangle
  number = 0
  loop do
    number += 1
    break if find_factor(number).length > DIVISOR
  end
  p find_factor(number)
  p find_triangle(number)
end

divisible_triangle

