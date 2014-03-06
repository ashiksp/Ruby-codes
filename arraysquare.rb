# arraysquare.rb
# To find the square of all elements in an array

puts "To find the square of all elements in an array"
puts "Enter the size of the Array"
size = gets.chomp.to_i
array1 = []
array2 = []

puts "Enter the elements of the Array\n"
for i in (0..size-1)
	array1 << gets.chomp.to_i
end

for i in array1
 array2 << i*i
end

puts "Entered array : " + array1.to_s
puts "Sqare of elements in the array :"+ array2.to_s


