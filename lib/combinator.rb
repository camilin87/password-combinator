class Combinator
    def self.generate(str)
        result = []

        if str.length > 0 then
            head = str[0]
            tail = str[1..str.length]

            head_combinations = Combinator.combine(head)
            tail_combinations = Combinator.generate(tail)

            head_combinations.each { |c|
                if str.length == 1 then
                    result.push(c)
                else
                    tail_combinations.each { |s|
                        result.push(c + s)
                    }
                end
            }
        end

        result
    end

    def self.combine(c)
        result = []

        special_substitutions = [
            ['0', 'o', 'O', ')'],
            ['7', 'z', 'Z', '&'],
            ['1', 'l', 'L', 'i', 'I', '!', '|'],
            ['2', '@']
        ]

        target_substitution_list = special_substitutions.select { |l|
            l.include? c 
        }

        if target_substitution_list.length > 0 then
            result.push target_substitution_list
        else
            result.push c

            if c.upcase != c.downcase && c == c.upcase then
                result.push c.downcase
            end
        end

        result.flatten.uniq
    end
end