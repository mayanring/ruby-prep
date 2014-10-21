# Implement a method that returns the number of quarters, dimes, nickles, and pennies for a given amount of cents.

def count_change(amount_in_cents)
  result = { :quarters => 0, :dimes => 0, :nickles => 0, :pennies => 0 }

  quarters = (amount_in_cents / 25).floor
  amount_in_cents = amount_in_cents - (quarters * 25)

  dimes = (amount_in_cents / 10).floor
  amount_in_cents = amount_in_cents - (dimes * 10)

  nickles = (amount_in_cents / 5).floor
  amount_in_cents = amount_in_cents - (nickles * 5)

  pennies = amount_in_cents

  result[:quarters] = quarters
  result[:dimes] = dimes
  result[:nickles] = nickles
  result[:pennies] = pennies

  result
end