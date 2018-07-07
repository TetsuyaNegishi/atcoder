N, M, D = gets.chomp.split(" ").map(&:to_i)

cnt = 0
(1..N).to_a.repeated_permutation(M).to_a.map{|d|
  for i in 1...M do
    cnt += 1 if (d[i] - d[i - 1]).abs == D
  end
}

puts cnt / N ** M