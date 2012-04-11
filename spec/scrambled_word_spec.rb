require 'spec_helper'

describe WordScramble::ScrambledWord do
  describe "valesags" do
    let(:sw) { WordScramble::ScrambledWord.new("valesags") }

    it "can make 'salvages'" do
      sw.can_make("salvages").should be_true
    end

    it "cannot make 'hooligans'" do
      sw.can_make("hooligans").should == false
    end

  end
end
