N, A, B = gets.chomp.split(" ").map(&:to_i)

sum = 0

def sumDigit(num)
  return 0 if num == 0
  return num % 10 + sumDigit(num / 10)
end

for i in 1..N do
  num = sumDigit(i)
  sum += i if A <= num && num <= B
end

p sum
