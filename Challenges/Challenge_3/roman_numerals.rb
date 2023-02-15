=begin
PEDAC

Input: Integer
Output: String with number translated to Roman Numerals

Rules:

Create a Roman Numeral Class that has two methods
  - first method is iniitalize and sets an instance variable to the integer input
  - second method converts the instancee variable to a roman numeral string

Data structure: array of the digits of the input integer

Algorithm:
Divide the number into digits that add to the integer
Convert each of the digits
Join the array together with all the converted digits

=end

class RomanNumeral
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_roman
    array = number.digits
    roman_array = []
    array.each_with_index do |digit, index|
      case index
      when 0
        roman_array << ones(digit)
      when 1
        roman_array.prepend(tens(digit))
      when 2
        roman_array.prepend(hundreds(digit))
      when 3
        roman_array.prepend(thousands(digit))
      end
    end
    roman_array.join
  end

  def ones(digit)
    case digit
    when 1..3
      "I"*digit
    when 4
      "IV"
    when 5
      "V"
    when 5..8
      "V" + "I"*(digit-5)
    when 9
      "IX"
    end
  end

  def tens(digit)
    case digit
    when 1..3
      "X"*digit
    when 4
      "XL"
    when 5
      "L"
    when 5..8
      "L" + "X"*(digit-5)
    when 9
      "XC"
    end

  end

  def hundreds(digit)
    case digit
    when 1..3
      "C"*digit
    when 4
      "CD"
    when 5
      "D"
    when 5..8
      "D" + "C"*(digit-5)
    when 9
      "CM"
    end
  end

  def thousands(digit)
    "M"*digit
  end
end


# puts RomanNumeral.new(47).to_roman