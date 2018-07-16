N = gets.chomp.to_i
An = gets.chomp.split(" ").map(&:to_i)

cnt = 0
prev = 0
for i in 0...N do
  if prev == An[i] then
    cnt += 1
    prev = 0
  else
    prev = An[i]
  end
end

p cnt