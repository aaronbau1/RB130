class SimpleLinkedList
  attr_accessor :head

  def empty?
    @head == nil
  end

  def size
    size = 0
    unless @head.nil?
      @head = @head.next
      size += 1
    end
    size
  end

  def push(datum)
    element = Element.new(datum, @head)
    @head = element
  end

  def peek
    @head.datum if @head
  end
end

class Element
  attr_reader :datum, :next

  def initialize(datum, next_element=nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    self.next == nil
  end


end
