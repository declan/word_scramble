class WordScramble::ScrambledWord

  def initialize(scrambled_word)
    @scrambled_word = WordScramble::LetterFrequency.new(scrambled_word)
  end

  def can_make(word)
    WordScramble::LetterFrequency.new(word) == @scrambled_word
  end

  def length
    @scrambled_word.length
  end

  alias_method :can_make?, :can_make

end
