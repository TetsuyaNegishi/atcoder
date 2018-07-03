N = gets.chomp.to_i
An = gets.chomp.split(" ").map(&:to_i)

p An.combination(2).to_a.map{|x, y| (x - y).abs}.max