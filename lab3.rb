def count_ones(n)
    n.to_s(2).chars.count("1")
end


puts count_ones 1234567890