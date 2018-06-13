coinsList = [500, 100, 50]

coinsNum = Array.new(coinsList.length)
coinsNum[0] = gets.chomp.to_i # 500円玉
coinsNum[1] = gets.chomp.to_i # 100円玉
coinsNum[2] = gets.chomp.to_i # 50円玉

Price = gets.chomp.to_i

coins = [0, 0, 0]
pattern = 0

if Price % 50 != 0 then
  print("0\n")
  exit
end

coinNumber = 2
coins[coinNumber] = Price / coinsList[coinNumber]

def check(coins, coinsNum, coinsList)
  for i in 0...coinsList.length do
    return false if coins[i] > coinsNum[i]
  end
  return true
end

loop do
  rate = coinsList[coinNumber - 1] / coinsList[coinNumber]
  loop do
    print(coins)
    coins[coinNumber] -= rate
    coins[coinNumber - 1] += 1
    pattern += 1 if check(coins, coinsNum, coinsList)
    break if coins[coinNumber] < rate
  end
  coinNumber -= 1
  break if coinNumber == 0
end

p pattern