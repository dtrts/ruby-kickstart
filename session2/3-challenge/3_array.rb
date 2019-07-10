# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    output = ""
    self.split("").each_with_index do |char, index|
      if index % 2 == 0
        output << char
      end
    end
    return output
  end

end
