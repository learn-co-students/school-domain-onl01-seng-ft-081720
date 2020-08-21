class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(x)
        roster[x]
    end

    def sort
        empty = {}
        key = roster.keys.sort
        key.each{|i| empty[i] = roster[i].sort}
        empty
    end
end