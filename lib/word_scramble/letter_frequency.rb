class WordScramble::LetterFrequency
  attr_reader :frequency_hash, :length

  def initialize(str)
    @length = str.length
    @frequency_hash = {}

    str.downcase.each_char do |c| 
      @frequency_hash[c] ||= 0
      @frequency_hash[c] += 1
    end
  end

  def ==(other)
    other.is_a?(WordScramble::LetterFrequency) and other.frequency_hash == @frequency_hash
  end

end
