# Template Method Pattern
# Date: 22-Aug-2022
# Authors:
#          A01748931 Bruno Omar Jimenez Mancilla
#          A01748559 Roberto Castro Barrios
# File name: student.rb
#A class that defines a student with a name an id and grades
class Student

  include Enumerable
  # Note: This class does not support the max, min,
  # or sort methods.
  #Initializes a new student with the values passed.
  def initialize(id, name, grades)
    @id = id
    @name = name
    @grades = grades
  end
  #Allows a to see a legible string with the id and the name of the student
  def inspect
    "Student(#{@id}, #{@name.inspect})"
  end
  #Calculates the average of the grades 
  def grade_average
    @grades.inject(:+)/@grades.size
  end
  #Displays all the info of a student
  def each &block
    yield @id
    yield @name
    @grades.each(&block)
    yield grade_average
  end

end
