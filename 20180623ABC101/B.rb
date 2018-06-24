N = gets.chomp.to_i

def calcS(n)
  return 0 if n == 0
  result = n % 10
  return result + calcS(n / 10)
end

puts N % calcS(N) == 0 ? 'Yes' : 'No'