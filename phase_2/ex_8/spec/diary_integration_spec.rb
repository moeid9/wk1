#def add
#def find_best_entry_for_reading_time(wpm, minutes)
# def count_words

require 'diary'
require 'diary_entry'

RSpec.describe 'integration' do
 
    it 'lists the entries added' do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new('title1', 'contents1')
      diary_entry_2 = DiaryEntry.new('title2', 'contents2')
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  
  describe 'count_words method' do
    it 'counts the words in all entries in contents' do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new('title1', 'contents 1')
        diary_entry_2 = DiaryEntry.new('title2', 'contents 2')
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 4
    end
  end
  
  describe "reading time method" do
    it "calculates reading time for all entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new('title1', 'contents 1')
        diary_entry_2 = DiaryEntry.new('title2', 'my contents 2')
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 3
    end
  end

  describe "find_best_entry_for_reading_time" do
    context "where there is just one entry and it is readlable in time" do
      it "returns that entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new('title1', 'contents 1')
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry_1
      end
    end

    context "where there is just one entry and it is unreadlable in time" do
        it "returns that entry" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new('title1', 'contents 1 longer')
          diary.add(diary_entry_1)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq nil
        end
    end
    context "where there is multiple entries to read in this time" do
        it "returns the longest entry" do
          diary = Diary.new
          best_entry = DiaryEntry.new('title1', 'contents 1')
          diary_entry_1 = DiaryEntry.new('title1', 'contents')
          diary_entry_2 = DiaryEntry.new('title1', 'contents 2 for')
          diary_entry_3 = DiaryEntry.new('title1', 'contents 3 for you')
          diary.add(diary_entry_1)
          diary.add(diary_entry_2)
          diary.add(diary_entry_3)
          diary.add(best_entry)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq best_entry
        end
    end
  end
end