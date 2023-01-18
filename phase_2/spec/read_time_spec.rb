require "read_time"

describe "read_time method" do
    context "given empty string" do
        it "returns zero" do
            result = read_time("")
            expect(result).to eq 0
        end
    end
    context "Given one word" do
        it "returns one" do
            result = read_time("one")
            expect(result).to eq 1
        end
    end
    context "Given a text of less than 200 words" do
        it "returns one" do
            result = read_time("one "*10)
            expect(result).to eq 1
        end
    end
    context "Given a text of 200 words" do
        it "returns one" do
            result = read_time("one "*200)
            expect(result).to eq 1
        end
    end
    context "Given a text of 300 words" do
        it "returns two" do
            result = read_time("one "*300)
            expect(result).to eq 2
        end
    end
    context "Given a text of 400 words" do
        it "returns two" do
            result = read_time("one "*400)
            expect(result).to eq 2
        end
    end
    context "Given a text of 1500 words" do
        it "returns eight" do
            result = read_time("one "*1500)
            expect(result).to eq 8
        end
    end
end