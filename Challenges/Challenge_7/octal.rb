=begin
PEDAC

INput number
Output octal number

Rules



Data Structure

Algorithm

=end

class Octal
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_decimal

    total = 0
    if valid?
      array = num.chars.map(&:to_i).reverse
      array.each_with_index do |val, base|
        total += val*(8**base)
      end
    end
    total
  end

  def valid?
    num.chars.map(&:to_i).map(&:to_s) == num.chars && num.to_i.digits.all? {|dig| dig < 8}
  end
end

p Octal.new('011').to_decimal