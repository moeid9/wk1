require "check_grammar"

describe "check_grammar method" do
    context "given empty string" do
        it "fails" do
            expect { check_grammar("") }.to raise_error "Not a sentence."
        end
    end

    context "given correct sentence" do
        it "returns true" do
            result = check_grammar("Hello, I am Moeid.")
            expect(result).to eq true
        end
    end

    context "given sentence with first word as capital " do
        it "returns true" do
            result = check_grammar("HELLO, I am Moeid.")
            expect(result).to eq true
        end
    end

    context "given sentence where first words is not capital" do
        it "returns false" do
            result = check_grammar("hello, I am Moeid.")
            expect(result).to eq false
        end
    end

    context "given sentence with no full stop" do
        it "returns false" do
            result = check_grammar("Hello, I am Moeid")
            expect(result).to eq false
        end
    end

    context "given incorrect sentence" do
        it "returns false" do
            result = check_grammar("hello, I am Moeid")
            expect(result).to eq false
        end
    end

end