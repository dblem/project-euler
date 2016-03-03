def is_prime?(num)
  num_root = Math.sqrt(num).to_i
  (2..num_root).all? do |x|
    num % x != 0
  end
end

def sum_of_primes(num)
  sum = 0
  num.downto(2) do |x|
    sum += x if is_prime?(x)
  end
  sum
end
