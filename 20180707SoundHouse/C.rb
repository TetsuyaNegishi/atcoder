N, M, D = gets.chomp.split(" ").map(&:to_i)

# cnt = 0
# end
# (1..N).to_a.repeated_permutation(M).to_a.map{|d|
#   for i in 1...M do
#     cnt += 1 if (d[i] - d[i - 1]).abs == D
#   end
# }
# puts cnt / N ** M


def calc(n, m, num)
  return 0 if m == 0
  (1..n).to_a.reduce(0){|sum, num2|
    sum + ((num2 - num).abs == D ? 2 ** (m - 1) : 0) + calc(n, m - 1, num2)
  }
end

p (1..N).to_a.reduce(0){|sum, i|
  sum + calc(N, M - 1, i)
} / N ** M