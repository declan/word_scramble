require "word_scramble/version"

#######################
#
# Word Scramble
#
# A game played in the Virgin Airlines waiting lounge.
#
# Input is a scrambled string.
# You try to make a word from those letters.
#
# ===== Examples
#   "rnmteial" => "terminal"
#   "realapin" => "airplane"
#   "liopt" => "pilot"
#
# ==== Usage
#
#   descrambler = WordScramble::Descrambler.new("realapin")
#   descrambler.matching_words  # => ["airplane"]

module WordScramble 
  DICTIONARY = File.open(File.expand_path('../dictionary.txt', __FILE__)) do |f|
    dictionary = {}
    f.each_line do |line|
      word = line.strip
      length = word.length
      dictionary[length] ||= []
      dictionary[length].push(word)
    end
    dictionary
  end
end

require File.expand_path('../word_scramble/scrambled_word', __FILE__)
require File.expand_path('../word_scramble/descrambler', __FILE__)
require File.expand_path('../word_scramble/letter_frequency', __FILE__)
