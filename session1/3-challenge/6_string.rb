# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  output = ""

  string.split("").each_with_index do |letter ,index|
  
    if return_odds && index%2 == 1 
      output << letter
    elsif !return_odds && index % 2 == 0
      output << letter 
    end
  
  end 

    output 

end