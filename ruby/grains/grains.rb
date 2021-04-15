=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  def self.square(number)
    if number > 0 && number <= 64
      square = 2 ** (number - 1)
    else
        raise ArgumentError
    end
  end

  def self.total
    total = 0
    64.times do |run|
      num = run + 1
      total += square(num)
    end
    total = total
  end
end
