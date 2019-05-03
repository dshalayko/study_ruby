def total (prices)
  amount = 0
  prices.each {|price| amount += price}
  amount
end

def refund (prices)
  amount = 0
  prices.each {|price| amount -= price}
  amount
end

def show_discount (prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts "you discont: #{amount_off}"
  end
end

prices = [1, 2, 3, 4]


puts total(prices)
show_discount(prices)