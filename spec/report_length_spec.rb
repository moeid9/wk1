require 'report_length'
describe 'report_length' do
    it'returns This string was 0 characters long. when given empty' do
        expect(report_length("")).to eq "This string was 0 characters long."
    end
    it'returns This string was 5 characters long. when given "moeid"' do
        expect(report_length("moeid")).to eq "This string was 5 characters long."
    end
end