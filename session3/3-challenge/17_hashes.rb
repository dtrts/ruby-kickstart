# frozen_string_literal: true

# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(list)
  data = data_from_head(list)
  puts data.reverse.join("\n")
end

def data_from_head(head)
  if head[:next].nil?
    [head[:data]]
  else
    [head[:data]] + data_from_head(head[:next])
  end
end
