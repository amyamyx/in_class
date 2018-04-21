require 'byebug'
def range(start, finish)
  return [] if start == finish
  a = [start] + range(start + 1, finish)
  [] + a
end

def sum_arr_rec(arr)
  return 0 if arr.empty?
  arr[0] + sum_arr_rec(arr[1..-1])
end

def sum_arr_iter(arr)
  arr.reduce(:+)
end

def exp1(base, n)
  return 1 if n == 0
  return base if n == 1
  
  base * exp1(base, n - 1)
end

def exp2(base, n)
  return 1 if n == 0
  return base if n == 1
  
  if n.even?
    exp2(base, n / 2) ** 2
  else
    base * (exp2(base, (n - 1) / 2) ** 2)
  end
end

class Array
  
  def deep_dup
    dupped = []
    
    self.each do |el|
      dupped += el.is_a?(Array) ? [el.deep_dup] : [el]
    end
    
    dupped
  end
end

def fib(n)
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2
  
  result = [0, 1]
  until result.length == n
    result << result[-1] + result[-2]
  end
  
  result
end

def bsearch(arr, n)
  mid_i = arr.length / 2
  
  case arr[mid_i] <=> n
  when 1
    a = bsearch(arr[0...mid_i], n)
    return a unless a.nil?
  when 0 
    return mid_i
  when -1
    a = bsearch(arr[mid_i + 1..-1], n)
    return mid_i + a + 1 unless a.nil?
  end 
  nil
end


