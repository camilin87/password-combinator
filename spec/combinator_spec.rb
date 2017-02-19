require 'combinator'

describe 'Combinator' do
    it 'conly changes casing for uppercase letters' do
        expect(Combinator.generate('a')).to eq([
            'a'
        ])

        expect(Combinator.generate('A')).to eq([
            'A',
            'a'
        ])
    end

    it 'combines every character' do
        expect(Combinator.generate('Ba')).to match_array([
            'Ba', 'ba'
        ])
    end

    it 'generates expected combinations' do
        expect(Combinator.generate('abc')).to match_array(['abc'])

        expect(Combinator.generate('ABC')).to match_array([
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

        expect(Combinator.generate('O')).to match_array([
            'o', 'O', '0'
        ])

        expect(Combinator.generate('0')).to match_array([
            'o', 'O', '0'
        ])
    end

    it 'stick like things' do
        expect(Combinator.generate('1')).to match_array([
            '1', 'i', 'I', 'l', 'L'
        ])

        expect(Combinator.generate('i')).to match_array([
            '1', 'i', 'I', 'l', 'L'
        ])

        expect(Combinator.generate('l')).to match_array([
            '1', 'i', 'I', 'l', 'L'
        ])
    end

    it 'zorro like things' do
        expect(Combinator.generate('z')).to match_array([
            'z', 'Z', '7'
        ])

        expect(Combinator.generate('Z')).to match_array([
            'z', 'Z', '7'
        ])

        expect(Combinator.generate('7')).to match_array([
            'z', 'Z', '7'
        ])
    end

    it 'multiple complex combinations' do
        expect(Combinator.generate('1B0')).to match_array([
            '1b0', '1B0', 'ib0', 'iB0', 'Ib0', 'IB0', 'lb0', 'lB0', 'Lb0', 'LB0', 
            '1bo', '1Bo', 'ibo', 'iBo', 'Ibo', 'IBo', 'lbo', 'lBo', 'Lbo', 'LBo',
            '1bO', '1BO', 'ibO', 'iBO', 'IbO', 'IBO', 'lbO', 'lBO', 'LbO', 'LBO'
        ])
    end
end