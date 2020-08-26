# code here!
class School
    attr_accessor :roster, :name, :grade

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.key?(grade) 
            roster[grade] = []
        end
        roster[grade] << "#{name}"
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each {|grade, name| sorted_roster[grade] = name.sort}
        sorted_roster
    end

end