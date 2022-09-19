def mfp(m)
    sum = (1..m).inject(0) { |sum,i| sum + i.digits.inject(1) {|result, j| result * (j > 0 ? j : 1)} }
    ans = 1
    (2...sum**0.5).each { |i|
      ans = i if sum % i == 0
      sum /= i while sum % i == 0
    }
    [ans, sum].max
end