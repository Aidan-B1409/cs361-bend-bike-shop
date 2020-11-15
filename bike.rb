# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :naked_weight, :luggage

  def initialize(**args)
    @id = args.fetch(:id, 0)
    @color = args.fetch(:color, :invisible)
    @price = args.fetch(:price, 0.00)
    @naked_weight = args.fetch(:weight, STANDARD_WEIGHT)
    @luggage = args.fetch(:luggage)
  end

  def rental_price
    @price + (2 * @naked_weight) + (2 * luggage_weight)
  end

  def weight
    @naked_weight * luggage_weight
  end

  def luggage_weight
    @luggage.weight
  end
end
