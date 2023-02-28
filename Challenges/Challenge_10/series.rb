class Series
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def slices(length)
    raise ArgumentError.new if length > num.size
    result = []
    array = num.chars.map(&:to_i)
    array.each_index do |index|
      break if index > array.size - length
      result << array.slice(index,length)
    end
    result
  end
end

p Series.new('01234').slices(1)