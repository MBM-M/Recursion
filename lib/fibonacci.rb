#use iteration
def fibonacci_iterative(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0,1]
  end

  seq = [0,1]
  (n-2).times do |i|
    seq << seq[i] + seq[i+1]
  end
  seq
end

#use recursion
def fibonacci_recursive(n)
  return [0] if n == 1
  return [0,1] if n == 2

  arr = fibonacci_recursive(n-1)
  arr << arr[-1] + arr[-2]
end