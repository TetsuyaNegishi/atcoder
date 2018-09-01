N, M, Q = gets.chomp.split(" ").map(&:to_i)
LRm = (1..M).map { gets.split.map(&:to_i) }
PQq = (1..Q).map { gets.split.map(&:to_i) }

# PQq.map{|pq| puts LRm.count{|lr| pq[0] <= lr[0] && lr[1] <= pq[1]}}

lrm = LRm.sort_by{ |lr| lr[0] }
pqq = PQq

# pqq = PQq.sort_by{ |pq| pq[0] }

def cutLrm(lrm, l)
  x = Marshal.load(Marshal.dump(lrm))
  loop do
    return x if x[0][0] >= l
    x.shift
  end
end

def getLrm(lrmMap, l, lrm)
  return lrmMap[l.to_s] if lrmMap[l.to_s]
  tmp = cutLrm(lrm, l)
  lrmMap[l.to_s] = tmp
  return tmp
end

lrmMap = {}

loop do
  break if pqq.empty?
  pq = pqq.shift
  p, q = pq
  # lrm = cutLrm(lrm, p); prep = p if prep != p
  lrm = getLrm(lrmMap, p, lrm)
  puts lrm.count{ |item| item[1] <= q}
end

