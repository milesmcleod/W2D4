class CrazyHashStack

  def initialize
    @store = []
  end

  def peek
    @store.last
  end

  def push(el)
    if @store.empty?
      hash = {val: el, max: el, min: el}
      @store.push(hash)
    else
      hash = {val: el}
      if el > @store.peek[:max]
        hash[:max] = el
      else
        hash[:max = @store.peek[:max]]
      end
      if el < @store.peek[:min]
        hash[:min] = el
      else
        hash[:min = @store.peek[:min]]
      end
    end

    def pop
      @store.pop
    end

    end
  end







end
