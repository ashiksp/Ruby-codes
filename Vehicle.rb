# Vehicle.rb
# Automobile module and Vehicle class

module Automobile
end

class Vehicle
	include Automobile
	def initialize(name,noOfWheels, color, price, brand)
		@name = name
		@noOfWheels = noOfWheels
		@color = color
		@price = price
		@brand = brand

		puts "Vehicle name : #{name}, Brand : #{brand}"
		puts "No of Wheels : #{noOfWheels}"
		puts "Available Color : #{color}"
		puts "Vehicle cost : Rs.#{price}/-"
	end
end

class Bike < Vehicle
end

class Car < Vehicle
end

class Bus < Vehicle
end

puts "Choose one option to know information, Bike/Car/Bus"
input = gets.chomp
if input == "Bike"; obj = Bike.new "Bike","2","Black","35000","Pulsar"
elsif input == "Car"; obj = Car.new "Car","4","Blue","3.5lakh","Alto"
elsif input == "Bus"; obj = Bus.new "Bus","6","White","12lakh","Volvo"
else puts "Wrong option"
end
