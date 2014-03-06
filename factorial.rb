# factorial.rb
# To find the factorial of a number

def fact(n)
	if n <= 1
		1
	else
		n * fact(n-1)
	end
end

puts "Enter the number for which factorial to be calculated: "
n = gets.chomp.to_i
puts "factorial (#{n}) = " + fact(n).to_s
