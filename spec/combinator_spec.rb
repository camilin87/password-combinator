require 'combinator'

describe 'Combinator' do
    it 'generates case combinations' do
        expect(Combinator.generate('a')).to eq([
            'a',
            'A'
        ])
    end

    it 'combines every character' do
        expect(Combinator.generate('Ba')).to match_array([
            'Ba',
            'ba',
            'BA',
            'bA'
        ])
    end
end