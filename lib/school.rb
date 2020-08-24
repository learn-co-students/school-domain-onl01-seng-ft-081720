# code here!
class School

    def initialize (name)
        @name = name 
        @roster= {}
    end 

    def roster
        @roster
    end 

    def add_student (name, grade)
        #a ||= b means, if a is undefined then assign it the value of b, otherwise leave it alone. 
        @roster[grade] ||= []
        @roster[grade] << name  
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |key, value|
            value.sort! 
        end 
    end 

end