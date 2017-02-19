require 'combinator'

describe 'Combinator' do
    it 'generates case combinations' do
        expect(Combinator.generate('a')).to eq([
            'a', 'A'
        ])
    end

    it 'combines every character' do
        expect(Combinator.generate('Ba')).to match_array([
            'Ba', 'ba', 'BA', 'bA'
        ])
    end

    it 'combines O to zeros' do
        expect(Combinator.generate('o')).to match_array([
            'o', 'O', '0'
        ])
    end

    it 'combines zeros to Os' do
        expect(Combinator.generate('0')).to match_array([
            '0', 'o', 'O'
        ])
    end

    it 'combines ones to is and ls' do
        expect(Combinator.generate('1')).to match_array([
            '1', 'i', 'I', 'l', 'L'
        ])
    end

    it 'combines is to 1s and ls' do
        expect(Combinator.generate('i')).to match_array([
            'i', 'I', '1', 'l', 'L'
        ])
    end

    it 'combines ls to 1s and is' do
        expect(Combinator.generate('l')).to match_array([
            'l', 'L', '1', 'i', 'I'
        ])
    end
end