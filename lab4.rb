def decode_ways(code)
    code = code.digits.reverse
    num = [1, 0]
    (0...code.length).each { |i|
        if (1..9) === code[i]
            num[i + 1] = num[i]
        else
            num[i + 1] = 0
        end
        if i > 0 && (10..26) === code[i - 1] * 10 + code[i]
            num[i + 1] += num[i - 1]
        end
    }
    num[code.length]
end

puts decode_ways 10