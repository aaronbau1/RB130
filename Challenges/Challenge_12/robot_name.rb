require "pry"

class Robot
  attr_accessor :name
  @@roster = []

  def initialize
    @name = create_name
  end

  def create_name
    name = []
    loop do
      letters = ("A".."Z").to_a
      numbers = (0..9).to_a
      2.times{|_| name << letters.sample}
      3.times{|_| name << numbers.sample}
      break unless @@roster.include?(name.join)
      name = []
    end
    @@roster << name.join
    name.join
  end

  def reset
    @name = create_name
  end
end
