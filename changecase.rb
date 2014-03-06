# changecase.rb
# Alternate uppercase and lowercase letters

puts "Please Enter your Name: "
name = gets.chomp
status = 0
result = ""


for i in (0..(name.length-1))
	if status == 0 && name[i] != " "
	result.concat(name[i].upcase)
	status = 1
	elsif status ==1 && name[i] != " "
	result.concat(name[i].downcase)
	status = 0
	else
	result.concat(" ")
	end
end

puts "Name with alternate uppercase and lowercase letters : " +result
