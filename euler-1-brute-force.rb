class MultiplesOfThreeAndFive
  attr_reader :multiples

  def initialize(limit)
    @limit = limit
    @multiples = []
  end

  def multiples_of_three
    count = 0
    while count < @limit
      @multiples << count if (count % 3 == 0 && !@multiples.include?(count))
      count += 1
    end
  end

  def multiples_of_five
    count = 0
    while count < @limit
      @multiples << count if (count % 5 == 0 && !@multiples.include?(count))
      count += 1
    end
  end

  def sum_of_divisors
    multiples_of_three
    multiples_of_five
    @multiples.inject(:+)
  end
end

puts "enter a limit"
limit = gets.chomp.to_i
m = MultiplesOfThreeAndFive.new(limit)
puts "final answer is: #{m.sum_of_divisors}"