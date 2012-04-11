require 'spec_helper'

describe WordScramble::ScrambledWord::WordChecker do
  describe "lelho" do
    let(:scrambled_word) { "lelho" }

    it "matches 'hello'" do
      wc = WordScramble::ScrambledWord::WordChecker.new(scrambled_word, "hello")
      wc.matches?.should be_true
    end
    
    it "doesn't match 'kittens'" do
      wc = WordScramble::ScrambledWord::WordChecker.new(scrambled_word, "kittens")
      wc.matches.should be_false
    end

    it "'princess' doesn't match 'princes'" do
      wc = WordScramble::ScrambledWord::WordChecker.new("princes", "princess")
      wc.matches.should be_false
    end

    it "is case insensitive" do
      wc = WordScramble::ScrambledWord::WordChecker.new("chicago", "Chicago")
      wc.matches.should be_true
    end
  end
end
