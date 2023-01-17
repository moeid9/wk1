require 'gratitudes'

describe Gratitudes do
    it "initializes and returns result" do
        gratitudes = Gratitudes.new
        result = gratitudes.format
        expect(result).to eq "Be grateful for: "
    end

    it "initializes, adds a gratitude and returns result" do
        gratitudes = Gratitudes.new
        gratitudes.add('health')
        result = gratitudes.format
        expect(result).to eq "Be grateful for: health"
    end
    
    it "initializes, adds a gratitude, adds another gratitude and returns result" do
        gratitudes = Gratitudes.new
        gratitudes.add('health')
        gratitudes.add('sunshine')
        result = gratitudes.format
        expect(result).to eq "Be grateful for: health, sunshine"
    end

end