# File: spec/music_library_spec.rb
require "music_library"

RSpec.describe MusicLibrary do
    context "initially" do
      it "is empty" do
        library = MusicLibrary.new
        expect(library.all).to eq []
      end
    end

  end