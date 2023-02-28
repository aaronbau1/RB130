=begin
PEDAC

Input: Integer
Output: string

Rules
Return an error if number is negative
create a class method with one argument called classify

Data Structure


Algorithm
initialize a total variable to 0
Iterate from 1 to num/2 of the given number
if the current integer is a factor, add to the total variable
return a specfiic string depending on whether total is less than, equal to, or greater

=end

class PerfectNumber
  def self.classify(num)
    raise StandardError.new "Number must be greater than or equal to 1." if num < 1

    total = 0
    (1...num).each do |val|
      total += val if num % val == 0
    end

    p total
    if total < num
      'deficient'
    elsif total == num
      'perfect'
    else
      'abundant'
    end
  end
end
