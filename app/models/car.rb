cclass Car

  attr_reader :make, :model, :classification, :owner
  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner

    @@all << self
  end

  def availible_mechanics
    Mechanic.all.select { |mechanic_instance| mechanic_instance.specialty == @classification}
  end

  def self.classifications
    all.map { |car_instance| car_instance.classification  }
  end

  def self.all
    @@all
  end
end