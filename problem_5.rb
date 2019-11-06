def smallest_multiple
  number = 20
  number.upto(10000000000) do |time|
    return number = time if 1.upto(20).all? {|num| time % num == 0 }
  end
end

p smallest_multiple
