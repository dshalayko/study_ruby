def total (prices)
  amount = 0
  index = 0
  while index < prices.length
    amount += prices [index]
    index += 1
  end
  amount
end

def refund (prices)
  amount = 0
  index = 0
  while index < prices.length
    amount -= prices [index]
    index += 1
  end
  amount
end

def show_discount (prices)
  index = 0
  while index < prices.length
    amount_off = prices [index] / 3.0
    puts "you discont: #{amount_off}"
    index += 1
  end
end

prices = [1, 2, 3, 4]


puts total(prices)
show_discount(prices)