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
  attr_reader :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    if self.include?(num)
      return false 
    end
    self[num] << num
    num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)

    self.store[num % num_buckets]
   
  end

  def num_buckets
    self.store.length
  end
end

class ResizingIntSet
  attr_accessor :store, :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    return false if include?(num)
    self[num] << num
    self.count += 1
    resize! if num_buckets < self.count
    num
  end

  def remove(num)
    if self[num].delete(num)
      self.count -= 1 
    end
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def num_buckets
    self.store.length
  end

  def resize!

  end

  def [](num)
    self.store[num % num_buckets]
  end
end
