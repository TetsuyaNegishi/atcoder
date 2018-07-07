A, B = gets.chomp.split(" ").map(&:to_i)

if A + B == 15 then
  puts '+'
elsif A * B == 15 then
  puts '*'
else
  puts 'x'
end
