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

    it 'combines O to zeros' do
        expect(Combinator.generate('o')).to match_array([
            'o',
            'O',
            '0'
        ])
    end

    it 'combines zeros to Os' do
        expect(Combinator.generate('0')).to match_array([
            '0',
            'o',
            'O'
        ])
    end
end