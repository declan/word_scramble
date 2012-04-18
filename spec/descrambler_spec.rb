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

end
