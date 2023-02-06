class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    indices = (0...length).to_a
    elements_hashes = map.with_index { |el, i| el.hash + i.hash }
    elements_hashes.sum
  end
end


class String
  def hash
    chars.map(&:ord).hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    to_a.sort_by(&:hash).hash
  end
end
