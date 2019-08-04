N = gets.chomp.to_i
Hn = gets.chomp.split(" ").map(&:to_i)

N-1.downto(0) do |i|
	next if i === 0
	if Hn[i-1] - Hn[i] > 1
		puts 'No'
		exit
	end
end

puts 'Yes'
