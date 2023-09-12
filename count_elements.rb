class CountElements
  def initialize(elements)
    @elements = elements
  end

  def perform
    @elements.each_with_object(Hash.new(0)) do |element, count_hash|
      count_hash[element] += 1
    end
  end
end