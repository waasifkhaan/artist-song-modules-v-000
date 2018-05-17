module Memorable 
  module ClassMethods
  
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end 
  end 

module InstanceMethods
  def initialize
    self.all << self
  end
  
  def to_param
  name.downcase.gsub(' ', '-')
end

end 

end 