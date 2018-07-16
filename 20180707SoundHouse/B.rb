S = gets.chomp.to_s
W = gets.chomp.to_i

result = ''
n = 0
loop do
  break if n > S.size()
  result = "#{result}#{S[n]}"
  n += W
end

puts result