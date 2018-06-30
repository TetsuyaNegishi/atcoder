N = gets.chomp.to_i
Px = (1..N).map { gets.chomp }

min0 = 10 ** 9

Px.map do |p|
  i = p.length - 1
  count = 0
  loop do
    break if p[i] != '0' || i <= 0
    count += 1
    i -= 1
  end
  min0 = count if count < min0
end

p min0