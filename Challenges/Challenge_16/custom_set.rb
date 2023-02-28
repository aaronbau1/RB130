class CustomSet
  def initialize(array=[])
    @list = array
  end

  def empty?
    @list.empty?
  end

  def contains?(number)
    @list.include?(number)
  end

end