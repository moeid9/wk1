require 'greet'
describe 'greet' do
    it 'greets Dora' do
        expect(greet('Dora')).to eq "Hello, Dora!"
    end
end