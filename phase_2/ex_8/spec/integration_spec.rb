# File: spec/music_library_integration_spec.rb
require 'music_library'
require 'track'
RSpec.describe "Integration" do
    it "gets all tracks and returns it" do
      library = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      expect( library.all ).to eq [track_1 , track_2]
    end
    
    it "gets all tracks and returns a specific track" do
      library = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("Carte")
      expect( result ).to eq [track_1]
    end
    
    it "returns nothing if no tracks match" do
      library = MusicLibrary.new
      track_1 = Track.new("Carte Blanche", "Veracocha")
      track_2 = Track.new("Synaesthesia", "The Thrillseekers")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("fred")
      expect( result ).to eq []
    end
    # ...
end
