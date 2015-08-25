class MultiplesOfThreeAndFive

  def sum_of_divisors(limit)
    @limit = limit - 1
    sum_threes + sum_fives - sum_fifteens
  end

  def sum_threes
    (1..(@limit / 3)).to_a.inject(:+) * 3
  end

  def sum_fives
    (1..(@limit / 5)).to_a.inject(:+) * 5
  end

  def sum_fifteens
    (1..(@limit / 15)).to_a.inject(:+) * 15
  end
end

puts "enter a limit"
limit = gets.chomp.to_i
puts "final answer is: #{MultiplesOfThreeAndFive.new.sum_of_divisors(limit)}"