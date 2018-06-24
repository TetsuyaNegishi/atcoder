N, M = gets.chomp.split(" ").map(&:to_i)
X = (1..N).map { gets.split.map(&:to_i) }

[-1, 1].product([-1, 1], [-1, 1]).map do |s|
  xs = X.map do |x|
    (0...3).map {|i| s[i]*x[i] }
  end

  puts("#{s}---------")
  print("#{xs}")
end