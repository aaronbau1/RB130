require 'pry'

class Diamond
  def self.make_diamond(letter)
    range = ("A"..(letter.ord-1).chr).to_a
    range_up = ("A"..letter).to_a
    length = range.size+2
    length_up = range_up.size+2
    self.make_top(range_up, length_up)
    self.make_bottom(range, length)
  end

  def self.make_top(range, length)
    range.each_with_index do |char, index|
      char = char.chr
      if index == 0
        puts char.center(length*2)
      else
        center = " ".center(index*2-1)
        outer = " "*(length-index-1)
        puts outer + "#{char}" + center + "#{char}" + outer
      end
    end
  end

  def self.make_bottom(range, length)
    range.reverse.each_with_index do |char, index|
      char = char.chr
      index = length-index
      if index == 0
        puts char.center(length*2)
      else
        center = " ".center(index*2-1)
        outer = " "*(length-index-1)
        puts outer + "#{char}" + center + "#{char}" + outer
      end
    end
  end
end

Diamond.make_diamond("E")