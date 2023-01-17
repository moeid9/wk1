
require 'present'

describe Present do
  it "calls unwrap method while there are no contents, returns fail statement" do
    present = Present.new
    expect{ present.unwrap() }.to raise_error "No contents have been wrapped"
  end

  it "calls wrap method twice, returns fail statement" do
    present = Present.new
    present.wrap('socks')
    expect{ present.wrap('socks2') }.to raise_error "The contents has already been wrapped"
  end

  it "calls wrap method, then calls unwrap method, then returns contents" do
    present = Present.new
    present.wrap('macbook')
    result = present.unwrap
    expect(result).to eq "macbook"
  end
end