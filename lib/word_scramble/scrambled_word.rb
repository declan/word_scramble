class WordScramble::ScrambledWord

  def initialize(scrambled_word)
    @scrambled_word = scrambled_word
  end

  def can_make(word)
    WordChecker.new(@scrambled_word, word).matches?
  end

  def length
    @scrambled_word.length
  end

  alias_method :can_make?, :can_make

  class WordChecker
    def initialize(scrambled_word, word)
      @scrambled_letters = scrambled_word.downcase.split('').sort.inject({}) do |frequency_hash, l|
        frequency_hash[l] ||= 0
        frequency_hash[l] += 1
        frequency_hash
      end
      @word_letters = word.downcase.split('').sort.inject({}) do |frequency_hash, l|
        frequency_hash[l] ||= 0
        frequency_hash[l] += 1
        frequency_hash
      end
    end

    def matches?
      @word_letters.each do |letter, count|
        scrambled_count = @scrambled_letters[letter]
        return false if scrambled_count.nil? or scrambled_count < count
      end
      return true
    end

    alias_method :matches, :matches?
  end

end
