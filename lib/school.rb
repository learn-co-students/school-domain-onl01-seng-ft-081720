class School
    def initialize(school_name)
    @school_name=school_name
    @roster={}
    end

    attr_reader :roster

    def add_student(name, grade)
        @name=name
        @grade=name
        if roster.include?(grade) == false
        roster[grade.to_i]=[]
        end
        roster[grade] << name
    end

    def grade(num)
        roster[num]
    end
    
    def sort
        new_hash={}
        roster.each do |grade, name|
        new_hash[grade] = name.sort
        end
new_hash
    end
end