class School
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name

        @roster = {}
    end

    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.values.sort
    end
end
