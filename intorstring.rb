# intorstring.rb
# Program to add numbers(if both arguments are numbers), concatenate strings
#(if both arguments are strings) or throw exception if both arguments are of
# different types

puts "Program to add numbers(if both arguments are numbers), concatenate strings(if both arguments are strings) or throw exception
if both arguments are of different types \n"


def add(arg1, arg2)
	if arg1.class == arg2.class && arg1.class.to_s == "Fixnum" || arg1.class.to_s == "Float"
	result = arg1 + arg2

	elsif arg1.class == arg2.class && arg1.class.to_s == "String"
	result = arg1.concat(arg2)
	else
	raise "Exception Msg : The arguments are of different types."
	end
	return result
end

puts "Result of add(2,3)  : " + add(2,3).to_s
puts "Result of add(10.5,5) : " + add(10.5,5).to_s
puts "Result of add(3.5, 4.5) : " + add(3.5,4.5).to_s
puts "Result of add('Ruby',''Rails) : " + add('Ruby','Rails')
puts "Result of add (5, 'Ruby') : " + add(5, 'Ruby')
