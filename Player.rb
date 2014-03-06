# Player.rb
# usage of hash table

player_hash = {}
name = ""
position = ""

puts "Enter the number of players"
size = Integer(gets.chomp)

puts "Enter the details in the format: playerName,position"
for i in (0..size-1)
str = gets.chomp
(name,position) = str.split(",") 
player_hash[name] = position
end

player_hash.each do |key,value|
puts "#{key} is a #{value}."
end
