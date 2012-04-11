require 'spec_helper'

describe WordScramble::Descrambler do
  let(:descrambled) { WordScramble::Descrambler.new(@scrambled).matching_words }

  it "descrambles leloh" do
    @scrambled = "leloh"
    descrambled.should include("hello")
  end

  it "descrambles valesages" do
    @scrambled = "valesages"
    descrambled.should include("salvages")
  end

  it "descrambles liopt" do
    @scrambled = "liopt"
    descrambled.should include("pilot")
  end

  it "descrambles realapin" do
    @scrambled = "realapin"
    descrambled.should include("airplane")
  end

  it "orders the matching words by length" do
    @scrambled = "liopt"
    descrambled.first.should == "pilot"
  end

end
