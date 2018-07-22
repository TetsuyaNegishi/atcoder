S = gets.chomp
T = gets.chomp

Len = S.length
for i in 0..Len do
  s = S[Len-i...Len] + S[0...Len-i]
  if s == T then
    puts 'Yes'
    exit
  end
end
puts 'No'