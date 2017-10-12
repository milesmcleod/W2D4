
def windowed_max_range(array, w)
  max_val = 0
  i = 0
  i2 = i + w
  while i2 <= array.length
    new_array = array[i...i2]
    sum = new_array.max - new_array.min
    max_val = sum if sum > max_val
    i += 1
    i2 += 1
  end
  max_val

end

puts windowed_max_range([1, 0, 2, 5, 4, 8], 2)
puts windowed_max_range([1, 0, 2, 5, 4, 8], 3)
puts windowed_max_range([1, 0, 2, 5, 4, 8], 4)
puts windowed_max_range([1, 3, 2, 5, 4, 8], 5)

class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.push(el)
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @max_vals = []
    @store = []
  end

  def pop
    if @store.last == @max_vals.last
      @max_vals.pop
    end
    @store.pop
  end

  def push(el)
    @store.push(el)
    if @max_vals.empty?
      @max_vals << el
    else
      if @max_vals.last <= el
        @max_vals << el
      end
    end
  end

  def max
    @max_vals.last
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class StackQueue

  def initialize
    @one = MyStack.new
    @two = MyStack.new
  end

  def enqueue(el)
    @one.push(el)
  end

  def dequeue
    if @two.empty?
      @one.size.times do |i|
        @two.push(@one.pop)
      end
       @two.pop
    else
      @two.pop
    end
    # (@one.size - 1).times do
    #   @two.push(@one.pop)
    # end
    # x = @one.pop
    # @two.size.times do
    #   @one.push(@two.pop)
    # end
    # x
  end

  def size
    @one.size + @two.size
  end

  def empty?
    @one.empty? && @two.empty?
  end
end
