# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  len = string.length

  if len == 1
    return ""
  end

  i = 0

  output = ""

  while i < len - 1

    if string[i] == "r" || string[i] == "R"
      output << string[ i + 1 ]
    end

    i += 1

  end

  return output

end
