require 'string_builder'

describe StringBuilder do
    it "initializes string builder and returns empty string" do
        string_builder = StringBuilder.new
        result = string_builder.output
        expect(result).to eq ""
    end
    it "initializes string builder, adds a string and returns result" do
        string_builder = StringBuilder.new
        string_builder.add("word")
        result = string_builder.output
        expect(result).to eq "word"
    end
    it "initializes string builder, adds two strings and returns result" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        string_builder.add("world")
        result = string_builder.output
        expect(result).to eq "helloworld"
    end
end