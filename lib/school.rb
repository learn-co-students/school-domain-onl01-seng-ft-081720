class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(student_name, students_grade)
        roster[students_grade] ||= []
        roster[students_grade] << student_name
    end
    def grade(students_grade)
        roster[students_grade]
    end
    def sort
        sorted_roster = {}
        roster.each do |grade, name|
            sorted_roster[grade] = name.sort
        end
        sorted_roster
    end
end