# frozen_string_literal: true

# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(string_arr)
  num_chars = string_arr.join('').length

  if num_chars == 1
    return false
  elsif num_chars == 2
    return true
  elsif num_chars.even?
    return false
  end

  i = 3

  while i < (num_chars / 2 + 1)
    return false if num_chars % i == 0

    i += 2
  end

  true
end
