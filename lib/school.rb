# code here!
class School
    attr_accessor :name, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(level)
        roster.detect do |a, b| 
            if a == level
                return b 
            end 
        end 
    end

    def sort 
        nu_hash = {}
        roster.each do |a, b| 
          nu_hash[a] = b.sort 
        end 
        nu_hash
      end 
          
end