=begin
PEDAC

Input: string
Output: array with all matching anagrams

Rules
empty array if no words match the anagram
two functions, an initialize method setting the value of the word
a match method that checks an argument array for anagrams
if there are multiple anagrams, they should be sorted
identical words are not anagrams
anagrams are case insensitive

Data Structure
create a result array of anagrams
save the word in a hash with letters and count as a key-value pair

Algorithm
create a result array
iterate through the word array and eliminate any words that don't have the same
key-value pairs as our word hash
return the result array

=end
require 'pry'

class Anagram
  attr_reader :anagram, :ogword

  def initialize(word)
    @ogword = word
    @anagram = word_to_hash(word)
  end

  def word_to_hash(word)
    word_hash = {}
    word_array = word.downcase.chars
    word_array.each do |char|
      if word_hash.include?(char)
        word_hash[char] += 1
      else
        word_hash[char] = 1
      end
    end
    word_hash
  end

  def match(word_array)
    result = []
    word_array.each do |word|
      temp_hash = word_to_hash(word)
      result << word if temp_hash == anagram && word.downcase != ogword.downcase
    end
    result.sort
  end
end