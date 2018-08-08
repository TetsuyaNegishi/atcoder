S = gets.chomp

def WA
  puts 'WA'
  exit
end

s = S.gsub(/A|C/, '')
isAC = S[0] == 'A' && S[2..S.length-2].count('C') == 1 && s == s.downcase()

WA() if !isAC
puts 'AC'
