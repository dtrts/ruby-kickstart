# frozen_string_literal: true

# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

def problem_14(*params)
  problem = :count_clumps
  problem = params.pop[:problem] if params.last.is_a?(Hash)

  if problem == :count_clumps
    return count_clumps(*params)
  else
    return same_ends(*params)
  end
end

def count_clumps(*params)
  clumps = 0
  previous_value = nil
  clumped = 0
  params.each do |param|
    if clumped == 0 && previous_value == param
      clumps += 1
      clumped = 1
    elsif previous_value != param
      clumped = 0
    end

    previous_value = param
  end

  clumps
end

def same_ends(*params)
  n = params.shift
  len = params.length

  return true if n == 0
  return false if len == 0

  matchy = true
  n.times do |i| # 0 indexed
    matchy &&= (params[i] == params[len - n + i])
  end

  matchy
end
