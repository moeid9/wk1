require 'diary_entry'

describe DiaryEntry do
    it 'initializes' do
        diary_entry = DiaryEntry.new("title1", "contents1")
        expect(diary_entry.title).to eq "title1"
        expect(diary_entry.contents).to eq "contents1"
    end

    context "given 5-word string as contents" do
        it "returns 5" do
            diary_entry = DiaryEntry.new("title1", "some words here to test")
            result = diary_entry.count_words
            expect(result).to eq 5
        end
    end

    context "given empty string as contents" do
        it "returns 0" do
            diary_entry = DiaryEntry.new("title1", "")
            expect(diary_entry.count_words).to eq 0
        end
    end

   
        it "returns the reading time of contents" do
        diary = DiaryEntry.new("Monday", ("hello my name is moeid" ))
        expect(diary.reading_time(5)).to eq 1
        end
        
        it "returns the reading time of contents" do
            diary = DiaryEntry.new("Monday", (""))
            expect(diary.reading_time(5)).to eq 0
        end

        it "returns the reading time of contents" do
            diary = DiaryEntry.new("Monday", ("one"))
            expect(diary.reading_time(2)).to eq 1
        end
    
    
end