N, K = gets.chomp.split(" ").map(&:to_f)
AN = gets.chomp.split(" ").map(&:to_i)

puts ((N - K) / (K - 1)).ceil + 1