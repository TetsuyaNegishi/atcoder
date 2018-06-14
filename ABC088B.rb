N = gets.chomp.to_i
numbers = gets.chomp.split(" ").map(&:to_i)
numbers.sort!.reverse!

diff = 0
coeff = 1

for i in 0...N do
  diff += coeff * numbers[i]
  coeff *= -1
end

p diff.abs