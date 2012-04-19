require 'spec_helper'

describe WordScramble::LetterFrequency do
  it 'knows that "pilots" and "spoilt" have the same letters' do
    pilots = WordScramble::LetterFrequency.new("pilots")
    spoilt = WordScramble::LetterFrequency.new("spoilt")
    pilots.should == spoilt
  end

  it 'knows that "neocon" and "satan" have different letter' do
    neocon = WordScramble::LetterFrequency.new("neocon")
    satan = WordScramble::LetterFrequency.new("satan")
    neocon.should_not == satan
  end

  it "knows how long the word should be" do
    WordScramble::LetterFrequency.new("pop").length.should == 3
  end
end
