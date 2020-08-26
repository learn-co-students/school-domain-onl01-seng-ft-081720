require 'pry'

class School
attr_accessor :grade, :roster, :name
attr_reader :name

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end

def add_student (name, grade)
    if !roster.key?(grade)
    roster[grade] = []
    end
    roster[grade] << "#{name}"
end

def grade (grade)
    roster[grade]
end

def sort 
    roster_sorted = {}
    roster.each do |grade, name|
        roster_sorted[grade] = name.sort
    end
    roster_sorted
end



end
