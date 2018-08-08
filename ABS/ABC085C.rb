N, Y = gets.chomp.split(" ").map(&:to_i)

for x in 0..N do
  for y in 0..N-x do
    z = N-x-y
    sum = x * 10000 + y * 5000 + z * 1000
    if sum == Y then
      printf("%d %d %d\n", x, y, z)
      exit
    end
  end
end

printf("%d %d %d\n", -1, -1, -1)