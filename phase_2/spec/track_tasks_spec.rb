require 'track_tasks'

describe 'track_tasks method' do
    context 'it is given an empty string' do
        it 'fails' do
            expect { track("") }.to raise_error "No task given."
        end
    end
    context 'it is given the wrong "#TODO" format' do
        it 'returns false' do
            result = track("#todo make dinner")
            expect(result).to eq false
        end
    end
    context 'it is given the wrong "#TODO" format' do
        it 'returns false' do
            result = track("#Todo make dinner")
            expect(result).to eq false
        end
    end
    context 'it is given TODO with the wrong symbol' do
        it 'returns false' do
            result = track("$TODO go shopping")
            expect(result).to eq false
        end
    end
    context 'it is given the correct TODO ' do
        it 'returns true' do
            result = track("do laundry #TODO")
            expect(result).to eq true
        end
    end
    context 'it is given the correct TODO ' do
        it 'returns true' do
            result = track("#TODO do laundry")
            expect(result).to eq true
        end
    end
    context 'it is given just TODO ' do
        it 'returns true' do
            result = track("#TODO")
            expect(result).to eq true
        end
    end

    context 'it is given a long text without #TODO' do
        it 'returns true' do
            result = track("do laundry" * 20)
            expect(result).to eq false
        end
    end
    context 'it is given a long text with one #TODO' do
        it 'returns true' do
            text = "do laundry" * 20
            result = track("#{text} #TODO")
            expect(result).to eq true
        end
    end
    context 'it is given a long text with multiple #TODO' do
        it 'returns true' do
            result = track("#TODO do laundry" * 20)
            expect(result).to eq true
        end
    end
    context 'it is given just TODO without hashtag' do
        it 'returns false' do
            result = track("TODO do laundry")
            expect(result).to eq false
        end
    end
end