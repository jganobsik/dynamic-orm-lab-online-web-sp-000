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
  persisted? ? update : insert
  end
  
def persisted?
  !!self.id 
end

def insert 
  sql = <<-SQL
  
  INSERT INTO #{self.class.table_name}
  
  
  SQL

end