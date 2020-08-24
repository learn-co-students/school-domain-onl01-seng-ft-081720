class School
    attr_reader :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        @roster[grade] = [] unless @roster.include?(grade)
        @roster[grade].push(name)
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