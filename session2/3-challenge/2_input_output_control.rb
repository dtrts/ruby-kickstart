# frozen_string_literal: true

# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye

# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def hi_hi_goodbye
  # your code here
  puts 'Enter a number'

  loop do
    user_input = gets.chomp

    if user_input == 'bye'
      puts 'goodbye'
      break
    end

    i = user_input.to_i

    i.times do
      print ' hi'
    end

    print "\n"
  end
end

# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $PROGRAM_NAME == __FILE__
