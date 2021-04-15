class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum_number = 0
    @number.times do |sum|
      sum_number = sum_number + sum + 1
    end
    square_of_sum = sum_number * sum_number
  end

  def sum_of_squares
    squared_number = 0
    @number.times do |square|
      squared_number = squared_number + ((square + 1) * (square + 1))
    end
    sum_of_squares = squared_number
  end

  def difference
    difference = square_of_sum - sum_of_squares
  end
end
