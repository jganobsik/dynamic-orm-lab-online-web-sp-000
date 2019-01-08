require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    "#{self.to_s.downcase}s"
  end
  
  def self.column_names
    
  end
  
  def self.attribute_names_for_insert
    attribute.{
  end
end