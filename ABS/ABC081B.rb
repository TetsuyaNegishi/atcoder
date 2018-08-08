num = gets.chomp.to_i
integers = gets.chomp.split(" ").map(&:to_i)

def hasAdd(integers)
  integers.any?{|integer| integer % 2 != 0}
end

count = 0

loop do
  if hasAdd(integers) then
    print("#{count}\n")
    break
  end
  integers.map!{|integer| integer / 2}
  count += 1
end
