require 'Prime'

value = 0
Prime.each(2000000) do |prime|
  if prime < 2000000
    value += prime
  else
    break
  end
end

p value
