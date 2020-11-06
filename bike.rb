# Bike
require_relative 'cargo_container'
class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = CargoContainer.new(MAX_CARGO_ITEMS)
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    @cargo.add_cargo(item)
  end

  def pannier_remaining_capacity
    @cargo.remaining_capacity
  end
  
end
