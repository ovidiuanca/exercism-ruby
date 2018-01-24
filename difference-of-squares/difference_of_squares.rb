class Squares
  def initialize(number)
    @numbers = (0..number)
  end

  def square_of_sum
    @numbers.reduce(:+)**2
  end

  def sum_of_squares
    @numbers.map { |n| n**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end