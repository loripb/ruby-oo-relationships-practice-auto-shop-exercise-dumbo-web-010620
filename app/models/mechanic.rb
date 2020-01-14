class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def cars_serviced
    Car.all.select { |car_instance| car_instance.classification == @specialty}
  end

  def car_owners
    cars_serviced.map { |car_instance| car_instance.owner.name }
  end

  def self.all
    @@all
  end

end
