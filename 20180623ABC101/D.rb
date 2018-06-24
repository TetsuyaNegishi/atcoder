N = gets.chomp.to_i

# if N < 10 then
#   for i in 1..N do
#     puts i
#   end
#   exit
# end

# for i in 1..9 do
#   puts i
# end

# restN = N - 9
# digit = 1

# loop do
#   for i in 1..9 do
#     exit if restN == 0
#     puts "#{i}#{'9' * digit}"
#     restN -= 1
#   end
#   digit += 1
# end

# for i in 1...
# 9 / 9 = 1
# 10 / 1 = 10
# 11 / 2 = 5.5
# 12 / 3 = 4
# 13 / 4 = 3.25
# 14 / 5 = 2.8

# 17 / 8 = 2.1
# 18 / 9 = 2
# 19 / 2 = 9.5

# 20 / 2 = 10
# 21 / 3 = 7
# 25 / 7 = 3.5
# 27 / 9 = 3
# 29 / 3 = 9.66

# 30 / 3 = 10
# 31 / 4 = 7.75

X = (1..N).map { gets.split.map(&:to_i) }

def calcS(n)
  return 0 if n == 0
  result = n % 10
  return result + calcS(n / 10)
end

# puts X
# print("#{X}")
for i in X do

  # puts "#{i}:   #{i.to_f / calcS(i)}  :  #{calcS(i)}"
  puts "#{i[0] / calcS(i[0])}"
  # puts i
end

