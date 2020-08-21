# code here!
require 'pry'

class School
#   def website
#   @website
# end
#
# # Classical set method
# def website=(website)
#   @website = website
# end
#
  def initialize(name)
    @name= name
    @roster= {}
  end

  def name
    @name
  end
  def roster
    @roster
  end

  def add_student(name, grade)
    grade_keys = @roster.keys
    if grade_keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.sort.each do |grade_key, student_value|
      student_value.sort!
    end

    @roster
  end



end
