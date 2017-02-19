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

        zero_like_chars = ['0', 'o', 'O']
        seven_like_chars = ['7', 'z', 'Z']
        one_like_chars = ['1', 'l', 'L', 'i', 'I']

        if zero_like_chars.include? c then
            result.push zero_like_chars
        elsif one_like_chars.include? c then
            result.push one_like_chars
        elsif seven_like_chars.include? c then
            result.push seven_like_chars
        else
            result.push c.downcase
            if c.downcase != c.upcase then
                result.push c.upcase
            end
        end

        result.flatten.uniq
    end
end