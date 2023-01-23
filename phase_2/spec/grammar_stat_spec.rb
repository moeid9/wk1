require "grammar_stat"

describe GrammarStats do

    context "given empty string" do
        it "fails" do
            grammar_stat = GrammarStats.new
            expect { grammar_stat.check("") }.to raise_error "No text given."
        end
    end
    context "given correct sentence" do
        it "returns true" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("Hello, I am Moeid.")
            expect(result).to eq true
        end
    end
    context "given sentence with different ending punctuation" do
        it "returns true" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("Hello, I am Moeid?")
            expect(result).to eq true
        end
    end
    context "given sentence with different ending punctuation" do
        it "returns true" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("Hello, I am Moeid!")
            expect(result).to eq true
        end
    end
    context "given sentence with first word as capital " do
        it "returns true" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("HELLO, I am Moeid.")
            expect(result).to eq true
        end
    end

    context "given sentence where first words is not capital" do
        it "returns false" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("hello, I am Moeid.")
            expect(result).to eq false
        end
    end

    context "given sentence with no full stop" do
        it "returns false" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("Hello, I am Moeid")
            expect(result).to eq false
        end
    end

    context "given incorrect sentence" do
        it "returns false" do
            grammar_stat = GrammarStats.new
            result = grammar_stat.check("hello, I am Moeid")
            expect(result).to eq false
        end
    end
    context "given 3 tests and one passed " do
        it "returns percentage of 33" do
            grammar_stat = GrammarStats.new
            grammar_stat.check("hello, I am Moeid.")
            grammar_stat.check("hello, I am Moeid")
            grammar_stat.check("HELLO, I am Moeid.")
            result = grammar_stat.percentage_good
            expect(result).to eq 33
        end
    end

end