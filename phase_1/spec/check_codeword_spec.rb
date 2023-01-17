require 'check_codeword'
describe 'check_codeword' do 
  it 'returns "Correct! Come in." when given "horse"' do
    expect(check_codeword('horse')).to eq "Correct! Come in."
  end
  it 'returns "Close, but nope." when given "home"' do
    expect(check_codeword('home')).to eq "Close, but nope."
  end
  it 'returns "WRONG!" when given "pass"' do
    expect(check_codeword('pass')).to eq "WRONG!"
  end
end