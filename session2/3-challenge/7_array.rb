# frozen_string_literal: true

# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these characters are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  # return sentence.scan(/[a-zA-Z'`’]+/).select.with_index{|word,i| i%2==0}
  sentence.scan(%r{[^!@$#%^&*()-=_+[]]:;,./<>?\| ]+}).select.with_index { |_word, i| i.even? }

  # split_list = [" ", "!", "@", "$", "#", "%", "^", "&", "*", "(", ")", "-", "=", "_", "+", "[", "]", ":", ";", ",", ".", "/", "<", ">", "?", "\\", "|"]

  # word_array = [sentence]

  # split_list.each do |splitter|
  #   word_array.collect! do |word|
  #     word.split(splitter)
  #   end
  #   word_array.flatten!
  # end

  # return word_array.select.with_index {|word,i| i%2==0}
end
