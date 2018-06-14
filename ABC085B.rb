N = gets.chomp.to_i
numbers = []
N.times do
  numbers << gets.chomp.to_i
end

p numbers.uniq.length