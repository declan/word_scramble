require 'spec_helper'

describe WordScramble do

  describe "Dictionary" do
    let(:d) { WordScramble::DICTIONARY }
    it "contains hello" do
      d[5].should include("hello")
    end

    it "contains fox" do
      d[3].should include("fox")
    end

    it "contains willow" do
      d[6].should include("willow")
    end

  end
end
