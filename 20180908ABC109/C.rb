N, X = gets.chomp.split(" ").map(&:to_i)
Xn = gets.chomp.split(" ").map(&:to_i)

puts Xn.map{|x| (X - x).abs}.reduce(:gcd)
D.rb