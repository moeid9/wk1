require 'music_list'

describe MusicList do
    context "trying to print an empty list" do
        it "fails" do
            music_list = MusicList.new
            expect{ music_list.print_list} .to raise_error "No songs in list."
        end
    end

    context "trying to add a track to the list" do
        it "returns list with new track" do
            music_list = MusicList.new
            music_list.add("Run BTS")
            expect(music_list.print_list).to eq "There is only Run BTS in your list"
        end
    end

    context "trying to add 2 tracks to the list" do
        it "returns list with new track" do
            music_list = MusicList.new
            music_list.add("Run BTS")
            music_list.add("The Hills")
            expect(music_list.print_list).to eq "Here are your Songs: Run BTS, The Hills"
        end
    end

    context "trying to add 3 tracks to the list" do
        it "returns list with new track" do
            music_list = MusicList.new
            music_list.add("Run BTS")
            music_list.add("The Hills")
            music_list.add("Rich Flex")
            expect(music_list.print_list).to eq "Here are your Songs: Run BTS, The Hills, Rich Flex"
        end
    end

    context "trying to add 4 tracks to the list" do
        it "returns list with new track" do
            music_list = MusicList.new
            music_list.add("Run BTS")
            music_list.add("The Hills")
            music_list.add("Rich Flex")
            music_list.add("Hypeboy")
            expect(music_list.print_list).to eq "Here are your Songs: Run BTS, The Hills, Rich Flex, Hypeboy"
        end
    end

end