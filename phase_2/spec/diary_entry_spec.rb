require "diary_entry"

describe DiaryEntry do
    it 'initializes' do
        diary_entry = DiaryEntry.new("title1", "contents1")
        expect(diary_entry.title).to eq "title1"
        expect(diary_entry.contents).to eq "contents1"
    end

    context "given empty string as contents" do
        it "returns 0" do
            diary_entry = DiaryEntry.new("title1", "")
            expect(diary_entry.count_words).to eq 0
        end
    end

    context "given 5-word string as contents" do
        it "returns 5" do
            diary_entry = DiaryEntry.new("title1", "some words here to test")
            result = diary_entry.count_words
            expect(result).to eq 5
        end
    end

    context "it is given a string of 100 words and wpm of 200" do
        it "returns 1" do
        diary = DiaryEntry.new("Monday", ("hello " * 100))
        expect(diary.reading_time(200)).to eq 1
        end
      end
    
      context "it is given a string of 200 words and wpm of 100" do
        it "returns 2" do
        diary = DiaryEntry.new("Monday", ("hello " * 200))
        expect(diary.reading_time(100)).to eq 2
        end
      end
    
      context "it is given an empty string" do
        it "returns 0" do
        diary = DiaryEntry.new("Monday", " ")
        expect(diary.reading_time(200)).to eq 0
        end
      end
    
      context "it is given a string of 200 words and wpm of 200" do
        it "returns 1" do
        diary = DiaryEntry.new("Monday", ("hello " * 200))
        expect(diary.reading_time(200)).to eq 1
        end
      end
    
      context "it is given a string of 290 words and wpm of 200" do
        it "returns 2" do
        diary = DiaryEntry.new("Monday", ("hello " * 290))
        expect(diary.reading_time(200)).to eq 2
        end
      end
      context "it is given the time of 5 minutes with a wpm of 200" do
        it 'returns hello how' do
          diary = DiaryEntry.new("Monday", ("hello how are you"))
          expect(diary.reading_chunk(2,1)).to eq ("hello how")
        end
      end
      context "it is asked for the second chunk" do
        it 'returns are you' do
          diary = DiaryEntry.new("Monday", ("hello how are you"))
          diary.reading_chunk(2,1)
          expect(diary.reading_chunk(2,1)).to eq ("are you")
        end
      end
    
      context "it is asked for the third time" do
        it 'returns hello how' do
          diary = DiaryEntry.new("Monday", ("hello how are you"))
          diary.reading_chunk(2,1)
          diary.reading_chunk(2,1)
          expect(diary.reading_chunk(2,1)).to eq ("hello how")
        end
      end
end