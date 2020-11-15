class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    @bike.rental_price
  end

  def weight
    @bike.weight
  end

end
