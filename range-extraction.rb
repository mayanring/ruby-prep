# A format for expressing an ordered list of integers is to use a comma separated list of either

# individual integers
# or a range of integers denoted by the starting integer separated from the end integer in the range by a dash, '-'. The range includes all integers in the interval including both endpoints. It is not considered a range unless it spans at least 3 numbers. For example ("12, 13, 15-17")
# Complete the solution so that it takes a list of integers in increasing order and returns a correctly formatted string in the range format.

# Example:

# solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# # returns "-6,-3-1,3-5,7-11,14,15,17-20"


def solution(list)
  # walk down the list and process each triplet, starting at the
  # current index.

  result = []
  current = []
  i = 0

  while (i < list.length)
    current = []
    remainder = list.drop(i)
    remainder.each_with_index do |r, j|
      if (j+1 < remainder.length) && (remainder[j+1] - remainder[j] == 1)
        current.push(r, remainder[j+1])
       else
         break
      end
    end

    if current.length >= 3
      result.push("#{current.first}-#{current.last}")
      i = list.index(current.last) + 1
      break if i >= list.length
    else
      result.push(list[i])
      i = i + 1
    end
  end

  result.join(",")
end