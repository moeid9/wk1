
require "count_words"

describe "count_words method" do
  context "given empty string" do
    it "return 0" do
      result = count_words('')
      expect(result).to eq 0
    end
  end

  context "given 5-word string" do
    it "return 5" do
      result = count_words('Hello hello eerv er er')
      expect(result).to eq 5
    end
  end
end