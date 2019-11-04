def is_palindrome?(number)
  number.to_s[0..2] == number.to_s[3..5].reverse
end

def find(number)
  pal = 0
  loop do
    number.downto(1) do |num|
      pal = num if is_palindrome?(num)
      break if is_palindrome?(num)
    end
    number = pal - 1
    break unless check(pal).nil?
  end
  p check(pal)
  p pal
end

def check(number)
  999.downto(100) do |time|
    return time if number % time == 0 && number / time < 1000w
  end
  nil
end


find(998001)
