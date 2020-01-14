require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Mechanics
joe = Mechanic.new('Joe', 'antique')
kay = Mechanic.new('Kay', 'exotic')
mike = Mechanic.new('Mike', 'clunker')
cindy = Mechanic.new('Cindy', 'exotic')

#owners
owner1 = CarOwner.new('Lei')
owner2 = CarOwner.new('Tay')

# cars
car1 = Car.new('Chevey', 'Impala', joe.specialty, owner2)
car2 = Car.new('lambo', 'sport', cindy.specialty, owner1)
car3 = Car.new('volts waggon', 'bus', mike.specialty, owner2)
car4 = Car.new('volts waggon', 'buggie', mike.specialty, owner1)




binding.pry
0
