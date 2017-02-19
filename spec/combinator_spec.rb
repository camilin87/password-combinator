require 'combinator'

describe 'Combinator' do
    it 'generates case combinations' do
        expect(Combinator.generate('a')).to eq([
            'a',
            'A'
        ])
    end
end