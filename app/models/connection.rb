class Connection < ActiveRecord::Base
  
     def initialise()
       super
     end
  
  def self.url
    :url
  end

  def self.username
    :username
  end
  
  def self.apikey
    :apikey
  end
    
end