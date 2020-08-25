# code here!
class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
#calls the roster method
  def roster
    @roster
  end
#adds each students name and checks the roster against grade and level
  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

#determines what grade number each student is at
  def grade(number)
    @roster[number]
  end

  def sort
    #Goes through each grade on the roster and sort them then returns the new sorted roster
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end

