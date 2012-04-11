class WordScramble::Descrambler

  def initialize(scrambled_word)
    @scrambled_word = WordScramble::ScrambledWord.new(scrambled_word)
    @matching_words = []
  end

  def matching_words
    unless @already_descrambled
      descramble
    end
    @matching_words
  end

  def descramble
    WordScramble::DICTIONARY.each do |word|
      if @scrambled_word.can_make?(word)
        @matching_words.push(word)
      end
    end
    @matching_words.sort! { |a,b| b.length <=> a.length }
    @already_descrambled = true
  end

end
