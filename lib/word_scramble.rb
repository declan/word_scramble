require "word_scramble/version"

#######################
#
# Word Scramble
#
# A game played in the Virgin Airlines waiting lounge.
#
# Input is a scrambled string.
# You try to make a word (or words) from those letters.
#
# ===== Examples
#   "valesages" => "las vegas"
#   "realapin" => "airplane"
#   "liopt" => "pilot"
#
# ==== Usage
#
#   descrambler = WordScramble::Descrambler.new("realapin")
#   descrambler.matching_words  # => ["airplane", ... ]

module WordScramble 
  DICTIONARY = File.open(File.expand_path('../dictionary.txt', __FILE__)) do |f|
    dictionary = []
    f.each_line do |line|
      dictionary.push(line.strip)
    end
    dictionary
  end
end

require File.expand_path('../word_scramble/scrambled_word', __FILE__)
require File.expand_path('../word_scramble/descrambler', __FILE__)
