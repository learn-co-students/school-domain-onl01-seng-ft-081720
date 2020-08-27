require 'pry'

class School
    def initialize(roster)
    @roster={}
    end

    attr_reader :roster

    def add_student(name, grade)

        @roster[grade.to_i]=[]
        @roster[grade] << name
binding.pry
    end
    
end