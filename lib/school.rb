require 'pry'
class School 

    attr_reader :name
        
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        @roster[grade] = [] if !@roster[grade] 
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end