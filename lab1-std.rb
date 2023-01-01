require prime

def mfp(m)
    sum = (1..m).map { |element| element.digits.select{|x| x > 0}.inject(:*) }.sum
    sum.prime_division.map {&:first}.max || 1
end