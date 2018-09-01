X1, Y1, X2, Y2 = gets.chomp.split(" ").map(&:to_i)

X3 = X2 + (Y1 - Y2)
Y3 = Y2 - (X1 - X2)
X4 = X3 + (Y2 - Y3)
Y4 = Y3 - (X2 - X3)

puts "#{X3} #{Y3} #{X4} #{Y4}"
