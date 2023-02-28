=begin

Input: integer

Output: integer

Rules
two methods, initialize method and .to method
if no argument is given, use default 3 and 5
otherwise if argument given in array form, use those numbers

Data Structure
number stored in an array and 3,5 default stored in an array

Algorithm
=end

class SumOfMultiples
  attr_reader :multiples

  def initialize(*array)
    @multiples = array
  end

  def to(num)
    result = 0

    (1...num).each do |val|
      multiples.each do |mul|
        if val % mul == 0
          result += val
          break
        end
      end
    end

    result
  end

  def self.to(num)
    SumOfMultiples.new(3,5).to(num)
  end
end