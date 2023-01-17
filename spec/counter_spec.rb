
require 'counter'

RSpec.describe Counter do
  it "initializes counter and reports that counter is at 0" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "initializes counter, adds 1, and reports that counter is at 1" do
    counter = Counter.new
    counter.add(1)
    result = counter.report
    expect(result).to eq "Counted to 1 so far."
  end

  it "initializes counter, adds 1, then adds 4, and then reports that counter is at 5" do
    counter = Counter.new
    counter.add(1)
    counter.add(4)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end
end