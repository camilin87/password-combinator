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

    it 'combines number with their equivalent symbols' do
        ['o', 'O', '0', ')'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                'o', 'O', '0', ')'
            ])
        }

        ['1', 'i', 'I', 'l', 'L', '!', '|', '\\'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '1', 'i', 'I', 'l', 'L', '!', '|', '\\'
            ])
        }

        ['2', '@'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '2', '@'
            ])
        }

        ['3', '#'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '3', '#'
            ])
        }

        ['4', '$'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '4', '$'
            ])
        }

        ['5', '%'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '5', '%'
            ])
        }

        ['6', '^'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '6', '^'
            ])
        }

        ['z', 'Z', '7', '&'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                'z', 'Z', '7', '&'
            ])
        }

        ['8', '*'].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '8', '*'
            ])
        }

        ['9', '('].each { |c|
            expect(Combinator.generate(c)).to match_array([
                '9', '('
            ])
        }
    end
end