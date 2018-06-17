A, B = gets.chomp.split(" ").map(&:to_i)

if A <= 8 && B <= 8 then
  print("Yay!\n")
else
  print(":(\n")
end