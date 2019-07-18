# frozen_string_literal: true

# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(initial_beers)
    @beers = 0
    @beers = if initial_beers < 0
               0
             elsif initial_beers > 99
               99
             else
               initial_beers
             end
  end

  def print_song
    if @beers == 0
      puts ''
      return
    end

    while @beers > 0
      of_beer = "#{num_to_word(@beers)} bottle#{@beers == 1 ? '' : 's'} of beer"
      on_wall = of_beer + ' on the wall'
      of_beer_minus_1 = "#{num_to_word(@beers - 1)} bottle#{@beers - 1 == 1 ? '' : 's'} of beer"
      on_wall_minus_1 = of_beer_minus_1 + ' on the wall'

      verse = on_wall + ",\n" + of_beer + ",\nTake one down, pass it around,\n" + on_wall_minus_1 + ".\n"

      puts verse
      @beers -= 1
    end

    nil
  end

  def num_to_word(num)
    case num
    when 0  then return 'Zero'
    when 1  then return 'One'
    when 2  then return 'Two'
    when 3  then return 'Three'
    when 4  then return 'Four'
    when 5  then return 'Five'
    when 6  then return 'Six'
    when 7  then return 'Seven'
    when 8  then return 'Eight'
    when 9  then return 'Nine'
    when 10 then return 'Ten'
    when 11 then return 'Eleven'
    when 12 then return 'Twelve'
    when 13 then return 'Thirteen'
    when 14 then return 'Fourteen'
    when 15 then return 'Fifteen'
    when 16 then return 'Sixteen'
    when 17 then return 'Seventeen'
    when 18 then return 'Eighteen'
    when 19 then return 'Nineteen'
    when 20 then return 'Twenty'
    when 30 then return 'Thirty'
    when 40 then return 'Forty'
    when 50 then return 'Fifty'
    when 60 then return 'Sixty'
    when 70 then return 'Seventy'
    when 80 then return 'Eighty'
    when 90 then return 'Ninety'
    end

    tens = num / 10

    num_to_word(tens * 10) + '-' + num_to_word(num % 10).downcase
  end
end
