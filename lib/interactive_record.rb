require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    "#{self.to_s.downcase}s"
  end
  
  def self.column_names
    
  end
  
  def self.attribute_names_for_insert
    ATTRIBUTES.keys[1.. - 1].collect
  end
  
  def self.attribute_values
end

def save
   def save 
  
    sql = <<-SQL
      INSERT INTO dogs (name, breed) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.breed)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM dogs")[0][0]
 self
  end
end

end