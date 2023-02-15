=begin
PEDAC

Rules:
Must have a Triangle class
Must have a method "kind" that determines the type of triangle
"kind" method returns a string for the type of triangle
Argument error is raised for
  Having a side that is 0
  Having a side that is less than 0
  Not following the rule of two sides summing to be greater than the third

Data Structure:
storing the 3 sides in an instance variable array and making
a triangle class

Algorithm:
  see if the array contains any values less than or equal to 0 on initialization
  return an argument error if so
  otherwise sort the sides instance variable on initialization
  from small to large

  kind method
    if the unique array has 3 values, return scalene
    if the unique array has 2 values, return isosceles
    if the unique array has 1 value, return equilateral
=end

class Triangle
  attr_accessor :sides

  def initialize(side1, side2, side3)
    checker = [side1, side2, side3]
    if any_side_negative?(checker)
      raise ArgumentError.new(
        "Can't have a side with a value less than or equal to 0")
    elsif is_triangle_invalid?(checker)
      raise ArgumentError.new(
        "Sums of two sides must be greater than the third side")
    else
      self.sides = checker
    end
  end

  def any_side_negative?(side_array)
    side_array.any? {|side| side <= 0}
  end

  def is_triangle_invalid?(side_array)
    temp = side_array.sort
    (temp[0] + temp[1]) <= temp[2]
  end

  def kind
    eval = sides.uniq
    case eval.size
    when 1
      "equilateral"
    when 2
      "isosceles"
    when 3
      "scalene"
    end
  end
end

p Triangle.new(2, 2, 2)