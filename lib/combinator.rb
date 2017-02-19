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
        [
            c.downcase,
            c.upcase
        ]
    end
end