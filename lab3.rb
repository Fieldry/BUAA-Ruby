def count_ones(n)
    n.to_s(2).chars.count("1")
    // n.digits(2).count(|x| x == 1)
end