=begin
PEDAC

Input: Two strings
Output: integer

Rules:
Determine the number of character differeces between two strings. This is the
Hamming Distance

If two strings are unequal length, just take the first x amount of characters
from the longer string

empty strands do not return an error

Data structure: Store the two DNA strands in arrays of characters

Algorithm:
Set a counter equal to zero
Set an iterator equal to zero
Iterate through both DNA strand arrays and see if the two values are equal or not
  if the two values are different, increment counter by 1
  if we reach the end of either dna character array, break from the loop

=end

class DNA
  attr_reader :dna_strand

  def initialize(strand)
    @dna_strand = strand
  end

  def hamming_distance(other_strand)
    diff_count = 0
    count = 0
    strand_length = [dna_strand, other_strand].map {|strand| strand.size}.min
    while count < strand_length
      if dna_strand[count] != other_strand[count]
        diff_count += 1
      end
      count += 1
    end

    diff_count
  end
end