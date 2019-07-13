# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
  output = Hash.new
  int.downto 1 do |value|
    if value%2 == 1
      output[value] = []
      value.downto 1 do |value_2|
        output[value] << value_2 if value_2%2 == 0
      end
    end
    output[value] = output[value].reverse if output[value] != nil
  end
  return output
end






