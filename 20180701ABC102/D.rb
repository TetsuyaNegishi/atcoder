N = gets.chomp.to_i
An = gets.chomp.split(" ").map(&:to_i)

pattern = (1...N).to_a.combination(3).to_a

@hashMap = {}
def getSum(arr)
  # p arr
  # p hashMap
  return @hashMap[arr] if @hashMap[arr]
  sum = arr.reduce(0){|r,i| r+=i}
  @hashMap[arr] = sum
  return sum
end

diff = []
pattern.map{ |arr|
  sumArr = []
  sumArr.push(getSum(An[0...arr[0]]))
  sumArr.push(getSum(An[arr[0]...arr[1]]))
  sumArr.push(getSum(An[arr[1]...arr[2]]))
  sumArr.push(getSum(An[arr[2]...N]))
  diff.push(sumArr.max - sumArr.min)
}

p diff.min
