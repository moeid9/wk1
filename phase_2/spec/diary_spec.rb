### tests
# empty String
# sting < 5
# string = 5 words
# string > 5 words

require "diary"

describe 'make_snippet' do
    it "returns an error message if it is given an empty string" do
        expect{ make_snippet("") }.to raise_error "Nothing has been entered"
    end

    it "returns the full string entered if the string is 5 or less words " do
        expect(make_snippet("Hello world")).to eq "Hello world"
    end

    it "returns the first 5 words of string entered and '...' if the string is more than 5 words" do
        expect(make_snippet("Hello world i am a diary program")).to eq "Hello world i am a ..."
    end
end