class Student

def rollno
	@rollno
end

def rollno=(rollno)
	@rollno = rollno
end

def name
	@name
end

def name=(name)
	@name = name
end

def age
	@age
end

def age=(age)
	@age = age
end

def gender
	@gender
end

def gender=(gender)
	@gender = gender
end


def sort(student)
	puts "Choose option for sorting criteria : 1.Rollno 2.Name 3.Age"
	choice = gets.chomp
	if choice == "1"
		result = student.sort_by  {|obj| obj.rollno}
	elsif choice == "2"
		result = student.sort_by  {|obj| obj.name}
	elsif choice == "3"
		result = student.sort_by  {|obj| obj.age}
	else
		puts "Invalid option"
	end

	puts "Sorted Student Details:"	
	puts "Rollno\tName\tAge\tGender"
	for x in result
	puts "#{x.rollno}\t#{x.name}\t#{x.age}\t#{x.gender}"
	end
end
end

class Register < Student
puts "Enter the number of students to register"
size = Integer(gets.chomp)
student = Array.new(size)

for i in (0..size-1)
	student[i] = Student.new
	student[i].rollno = Integer("#{i+1}")
	puts "Enter the details of student : #{i+1}"
	puts "Enter the name of student"
	student[i].name = gets.chomp
	puts "Enter the age of student"
	student[i].age = gets.chomp
	puts "Enter the gender of student"
	student[i].gender = gets.chomp

end

obj = Student.new
obj.sort(student)

end
























