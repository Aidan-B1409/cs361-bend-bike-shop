class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(items = [], **options)
    @capacity = options.fetch(:capacity, DEFAULT_MAX_CAPACITY)
    @items = items
  end

  def add(item)
    @items << item
  end

  def weight
    @items.size * 10
  end

end
