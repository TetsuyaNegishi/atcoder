A, B, C = gets.chomp.split(" ").map(&:to_i)
D = B + C
puts D < A ? 0 : D - A