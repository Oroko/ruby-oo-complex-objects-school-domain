# code here!
class School
  attr_accessor :name, :roster, :grade 
  
   
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(grade,name)
   @roster[name] ||= []
   @roster[name] << grade
  end
  def grade(grade)
    @roster.collect do |k,v|
      if k == grade
        v
        
      end
    end
    .flatten.compact
  end

  def sort 
   new_hash = {}
   @roster.each do |k,v|
    new_hash[k] = v.sort
    
   end
    new_hash
  end
  
end