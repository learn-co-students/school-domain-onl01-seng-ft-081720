# code here!
class School
     attr_accessor :add_student, :name, :grade 
     attr_reader :school, :roster

     
    def initialize(school,roster={})
       @school = school
       @roster = roster
    end  

    def add_student(name, grade)
       @name = name
       @grade = grade
       if !roster.key?(grade)
       roster[grade] = []
       end 
       roster[grade] << "#{name}"
    end
    
    def grade(grade)
       roster[grade]
    end

    def sort
        roster_sort = {}
        roster.each do |grade, name|
            roster_sort[grade] = name.sort
        end
        roster_sort
    end
    
end


