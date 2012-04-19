require 'spec_helper'

describe WordScramble::Descrambler do
  let(:descrambled) { WordScramble::Descrambler.new(@scrambled).matching_words }

  it "descrambles leloh" do
    @scrambled = "leloh"
    descrambled.should include("hello")
  end

  it "descrambles liopt" do
    @scrambled = "liopt"
    descrambled.should include("pilot")
  end

  it "descrambles realapin" do
    @scrambled = "realapin"
    descrambled.should include("airplane")
  end

  it "only returns words of the same length as the scrambled string" do
    @scrambled = "liopt"
    descrambled.select { |word| word.length != @scrambled.length }.should be_empty
  end

  it "doesnt crash with strings that are longer than any words in the dictionary" do
    @scrambled = "a" * 100
    lambda {descrambled}.should_not raise_error
  end

  describe "same_length_words" do
    let(:descrambler) { WordScramble::Descrambler.new(@scrambled) }
    it "returns an array of words" do
      @scrambled = "fxo"
      descrambler.same_length_words.should include("fox")
    end
    
    it "returns an empty array if there are no words of the same length" do
      @scrambled = "a" * 100
      descrambler.same_length_words.should be_empty
    end
  end

end
