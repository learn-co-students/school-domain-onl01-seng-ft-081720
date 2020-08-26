class School
  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade]||=[]
    roster[grade]<< student_name
  end
  
  def grade(student_grade)
    roster.detect do |a,b|
    if a == student_grade
      return b
      end
   end
 end
 
 def sort
  sorted_roster = {}
  roster.each do |a, b|
  sorted_roster[a] = b.sort
  end
  sorted_roster
end
end






# class Book
#   attr_accessor :author, :page_count  # remove the attr_accessor for genre
#   attr_reader :title, :genre  # add an attr_reader for genre
 
#   GENRES = []
 
#   def initialize(title)
#     @title = title
#   end
 
#   def turn_page
#     puts "Flipping the page...wow, you read fast!"
#   end
 
#   # create the writer for genre and add the logic for the class constant
#   def genre=(genre)
#     @genre = genre
#     GENRES << genre 
#   end
# end
