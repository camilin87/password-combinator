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

    it 'generates expected combinations' do
        expect(Combinator.generate('abc')).to match_array([
            'abc',
            'abC',
            'aBc',
            'aBC',
            'Abc',
            'AbC',
            'ABc',
            'ABC'
        ])
    end

    it 'circle like things' do
        expect(Combinator.generate('o')).to match_array([
            'o', 'O', '0'
        ])

        expect(Combinator.generate('0')).to match_array([
            '0', 'o', 'O'
        ])
    end

    it 'stick like things' do
        expect(Combinator.generate('1')).to match_array([
            '1', 'i', 'I', 'l', 'L'
        ])

        expect(Combinator.generate('i')).to match_array([
            'i', 'I', '1', 'l', 'L'
        ])

        expect(Combinator.generate('l')).to match_array([
            'l', 'L', '1', 'i', 'I'
        ])
    end

    it 'multiple complex combinations' do
        expect(Combinator.generate('1b0')).to match_array([
            '1b0', '1B0', 'ib0', 'iB0', 'Ib0', 'IB0', 'lb0', 'lB0', 'Lb0', 'LB0', 
            '1bo', '1Bo', 'ibo', 'iBo', 'Ibo', 'IBo', 'lbo', 'lBo', 'Lbo', 'LBo',
            '1bO', '1BO', 'ibO', 'iBO', 'IbO', 'IBO', 'lbO', 'lBO', 'LbO', 'LBO'
        ])
    end
end