class MaxIntSet 

  attr_reader :store

  def initialize(max)
    @store = Array.new(max,false)
  
  end

  def insert(num)
    self.store.push[num] = true 

 

  if @store[num] == false
    return false 
  end

  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    validate!(num)
    if self.store[num] == true
      return true
    end
    false
 
  end
  private

  def is_valid?(num)

    num.between?(0,self.store.length - 1)

  end

  def validate!(num)

    raise "error" unless is_valid?(num)

  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    self[num] << num
  end

  def remove(num)

    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
