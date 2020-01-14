class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def cars
    Car.all.select { |car_instance| car_instance.owner == self}
  end

  def mechanics
    cars.map do |car_instance|
      car_instance.availible_mechanics
    end
  end

  def sum_of_all_cars
    self.all.map do |owner|
      owner.cars.length
    end.sum
  end

  def self.average_car
    sum_of_all_cars / self.all.length
  end

  def self.all
    @@all
  end

end
