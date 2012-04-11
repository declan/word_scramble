require 'spec_helper'

describe WordScramble do
  it "has a Dictionary" do
    WordScramble::DICTIONARY.count.should be > 90000
  end

  it "has some common words in the dictionary" do
    WordScramble::DICTIONARY.should include("porridge")
  end
end
