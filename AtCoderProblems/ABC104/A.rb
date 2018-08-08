R = gets.chomp.to_i

result = 'AGC'
result = 'ARC' if R < 2800
result = 'ABC' if R < 1200

puts result
