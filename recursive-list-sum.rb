# a nested list is a list of elements which are either:
# 1. a number
# 2. a nested list

# given a nested list, find the sum.

def recursive_sum(nested_list)
  total = 0

  nested_list.each do |element|
    if element.is_a? Numeric
      total += element
    else
      total += recursive_sum(element)
    end
  end

  total
end

nested_list = [1, 2, 3, [30, 45, 72, 2], 7]
total = recursive_sum(nested_list)

puts total