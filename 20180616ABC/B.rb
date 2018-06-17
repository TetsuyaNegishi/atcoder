D, N = gets.chomp.split(" ").map(&:to_i)

if D == 0 then
  print("#{N}\n")
else
  zero = D == 1 ? '00' : '0000'
  print("#{N}#{zero}\n")
end
