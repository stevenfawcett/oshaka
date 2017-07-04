class Connection < ActiveRecord::Base
  has_many :tasks
  
     def initialise()
       super
     end
 
  # Give Some of my variables away
  # Url    
  def self.url
    :url
  end

  # Username
  def self.username
    :username
  end
  
  # Password or API Key
  def self.apikey
    :apikey
  end

  def self.apitoken
    :apitoken
  end
      
  
  def connected?()
     return test();
  end
  
end