require 'pry'
class School 

 def initialize(name)
   @name = name
   @roster = {}
 end
  def name 
    @name 
  end 
 
 
 def roster 
   @roster 
 end

 
 def add_student(name,grade)
  if @roster.include?(grade) == false
   @roster[grade] = []
    @roster[grade] << name
  else 
      @roster[grade] << name
     end
   end
  def grade(num)
    @roster.each do |key,value|
      if num == key 
         return value   
      end
     end 
   end 
   def sort
    @roster.collect do |key,value|
      value.sort!
    end
    @roster 
     end 
  end 

