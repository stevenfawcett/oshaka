class Connection < ActiveRecord::Base
  
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
      
  # Must have functions
  # Test
  def test()
    return "Connection FAILED at parent"
  end
  
  
end