N, Q = gets.chomp.split(" ").map(&:to_i)
Xn = gets.chomp.split(" ").map(&:to_i)
CDq = (1..Q).map { gets.chomp.split(" ").map(&:to_i) }
# x - c <= d  → x <= d + c
# -(x - c) <= d → x - c >= d → x >= d + c

# (x - c).abs >= d
# x - c >= d

# for q in 0...Q do
#   c, d = CDq[q]
#   result = Xn.reduce(0) do |sum, x|
#     xc = (x - c).abs
#     sum + (xc <= d ? xc : d)
#   end
#   p result
# end

for q in 0...Q do
  c, d = CDq[q]
  xn = Xn.map do |x|
    (x - c).abs
  end
  xn.sort!

  p = N - 1
  for i in 0...N do
    if xn[i] > d then
      p = i - 1
      break
    end
  end
  sum = 0
  sum += xn[0..p].reduce(:+) || 0
  sum += d * (N - p - 1)

  p sum
end
