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
    same_length_words.each do |word|
      if @scrambled_word.can_make?(word)
        @matching_words.push(word)
      end
    end
    @matching_words.sort! { |a,b| b.length <=> a.length }
    @already_descrambled = true
  end

  def same_length_words
    if WordScramble::DICTIONARY[@scrambled_word.length].nil?
      []
    else
      WordScramble::DICTIONARY[@scrambled_word.length]
    end
  end

end
