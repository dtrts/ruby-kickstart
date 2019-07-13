# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


def spiral_access(two_d ,&block)

  len = two_d.length
  return if two_d[0].length <= 0
  if len == 1
    block.call(two_d[0][0])
  elsif len == 2
    block.call(two_d[0][0])
    block.call(two_d[0][1])
    block.call(two_d[1][1])
    block.call(two_d[1][0])
  elsif len > 2

    0.upto len - 1 do |i|
      block.call(two_d[0][i])
    end

    1.upto len-1 do |i|
      block.call(two_d[i][len-1])
    end

    (len-2).downto 0 do |i|
      block.call(two_d[len-1][i])
    end

    (len-2).downto 1 do |i|
      block.call(two_d[i][0])
    end

    second_two_d = []
    1.upto (len-2) do |i|
      second_two_d << two_d[i][1..len-2]
    end

    spiral_access(second_two_d, &block)
  else
    return
  end





end



