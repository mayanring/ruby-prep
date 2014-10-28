# A nested list is a list containing either:
# 1. a number
# 2. another nested list

# write a method that finds the max number in a nested list.

def rmax(nested_list)
  max = -1/0.0  # negative infinity
  local_max = -1/0.0  # negative infinity

  nested_list.each do |element|
    if element.is_a? Numeric
      max = element if max < element
    else
      local_max = rmax(element)
      max = local_max if local_max > max
    end
  end

  max
end

def assert(condition)
  raise "assertion failed" unless condition
  print "."
end


assert(rmax([2, 9, [1, 13], 8, 6]) == 13)
assert(rmax([2, [[100, 7], 90], [1, 13], 8, 6]) == 100)