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
  
 
  
   def self.column_names

    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
      column_names << row["name"]
    end
    column_names.compact
  end
  
  
    def initialize(param_names={})
    param_names.each do |property, value|
      self.send("#{property}=", value)
    end
  end


 def save
    sql = <<-SQL
    "INSERT INTO #{table_name_for_insert} (#{col_names_for_insert}) VALUES (#{values_for_insert})"
    
    SQL
    DB[:conn].execute(sql)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM #{table_name_for_insert}")[0][0]
  end

def insert 
  sql = <<-SQL
  
  INSERT INTO #{self.class.table_name}(title) VALUES #{self.title}
  
  
  SQL
    DB[:conn].execute(sql, *attribute_values)
    
    self.id = DB[:conn].execute("SELECT last_insert_row_id();").flatten.first
  end
  
  
  def self.find_by(value)
    sql = <<-SQL
    
    SELECT * FROM #{self.
    SQL
end