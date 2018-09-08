H, W = gets.chomp.split(" ").map(&:to_i)
Ahw = (1..H).map { gets.chomp.split(" ").map(&:to_i) }

p Ahw
