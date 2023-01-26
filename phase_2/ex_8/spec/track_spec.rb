# File: spec/music_library_spec.rb
require 'track'
RSpec.describe Track do
    it "constructs" do
      track = Track.new('my_title', 'my_artist')
      expect(track.title).to eq "my_title"
      expect(track.artist).to eq "my_artist"
    end

    describe "format" do
      it "formats title and artist into single string" do
        track = Track.new('my_title', 'my_artist')
        expect(track.format).to eq 'my_title by my_artist'
      end
    end
    # ...
  end