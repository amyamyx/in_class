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



