class School 
  attr_reader :roster, :school_name, :student_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each{|k, v| v.sort!}
    @roster.sort.to_h
  end
end 