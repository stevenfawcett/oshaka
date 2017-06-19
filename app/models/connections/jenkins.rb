require 'jenkins_api_client'


class Jenkins < Connection
  
  def self.url
    self.url='https://trello.com'
  end
  
  def connect()
    @client = JenkinsApi::Client.new(:server_url => url, 
                                     :username   => username , 
                                     :password   => apikey )   
  end
  
  def test()    
       if @client.nil? 
          connect                  
       end 
       
       @client.job.list_all()
       return true
       
   rescue
         return false
  end

end