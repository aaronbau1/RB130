=begin

PEDAC

Input: string of characters
Output: scrabble scored based on given values

Rules:
nil scores zero
empty word scores zero
whitespace scores zero
words are case insensitive

Data Structure: store the scoring in a hash, store the word in an array
and score each value individually

Algorithm:

create a total variable
iterate through the characters in the word
add up each character's value
return the total value

=end
require 'pry'

class Scrabble
  attr_reader :word
  VALUES = {A:1, E:1, I:1, O:1, U:1, L:1, N:1, R:1, S:1, T:1, D:2,
            G:2, B:3, C:3, M:3, P:3, F:4, H:4, V:4, W:4, Y:4, K:5, J:8, X:8,
            Q:10, Z:10}

  def initialize(word)
    @word = word
  end

  def score
    total = 0
    return total if word == nil
    word_array = word.downcase.chars.select do |char|
      char.ord > 96 && char.ord < 123
    end

    word_array.each do |char|
      total += VALUES[char.upcase.to_sym]
    end
    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

p Scrabble.new("alacrity").score