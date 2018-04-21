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

def