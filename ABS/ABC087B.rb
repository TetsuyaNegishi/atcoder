coinsNum = Array.new(3)
coinsNum[0] = gets.chomp.to_i # 500円玉
coinsNum[1] = gets.chomp.to_i # 100円玉
coinsNum[2] = gets.chomp.to_i # 50円玉

Price = gets.chomp.to_i

pattern = 0

for a in 0..coinsNum[0] do
  for b in 0..coinsNum[1] do
    for c in 0..coinsNum[2] do
      pattern += 1 if 500 * a + 100 * b + 50 * c == Price
    end
  end
end

p pattern