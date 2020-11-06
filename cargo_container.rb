class CargoContainer

  attr_reader :capacity

  def initialize(capacity, content=[])
    @capacity = capacity
    @content = content
  end

  def add_cargo(item)
    @content << item
  end

  def remove_cargo(item)
    @content.remove(item)
  end

  def remaining_capacity
    @capacity - @content.length()
  end

end