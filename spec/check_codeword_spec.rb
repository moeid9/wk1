require 'check_codeword'
describe 'check_codeword' do 
  it 'returns "Correct! Come in." when given "horse"' do
    expect(check_codeword('horse')).to eq "Correct! Come in."
  end
end