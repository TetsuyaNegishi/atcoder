N = gets.chomp.to_i

result = 1

loop do
  break if result > N
  result *= 2
end

puts result / 2
