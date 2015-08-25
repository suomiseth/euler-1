class SumMultiplesOfTwoNumbers

  def sum_of_divisors(limit, d1, d2)
    sum(limit, d1) + sum(limit, d2) - sum(limit, (d1 * d2))
  end

  def sum(limit, n)
    count = (limit % n == 0 ? ((limit / n) - 1) : (limit / n))
    ((count * (count + 1)) / 2) * n
  end
end

puts "enter a limit"
limit = gets.chomp.to_i
puts "enter your first divisor: "
d1 = gets.chomp.to_i
puts "enter your second divisor: "
d2 = gets.chomp.to_i
puts "final answer is: #{SumMultiplesOfTwoNumbers.new.sum_of_divisors(limit, d1, d2)}"