T = gets.chomp.to_i
Xt = (1..T).map { gets.split.map(&:to_i) }

for t in 0...T do
  a, b, c, d = Xt[t]
  s = a % b
  d = d % b

  if a < b || s > c then
    puts 'No'
    next
  end

  if s <= c && d == 0 then
    puts 'Yes'
    next
  end

  loop do
    break if s > c
    s += d
  end
  puts b
  puts s
  puts b > s ? 'No' : 'Yes'

  # if s > c then
  #   puts 'No'
  #   next
  # end
  # if d == 0 then
  #   puts 'Yes'
  #   next
  # end

  # p s
  # s += s + ((c - s) / d).ceil * d
  # s = s + ((c - s) / d.to_f).ceil * d
  # s += d if s == c
  # puts s
  # puts s >= b ? 'Yes' : 'No'
  # p s + ((c - s) / d.to_f).floor * d
end