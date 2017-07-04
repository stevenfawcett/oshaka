require 'jenkins_api_client'


class Jenkins < Connection
  
  def connect()
    logger.info "JENKINS::Connecting to #{ url }"
    @client = JenkinsApi::Client.new(:server_url => url, 
                                     :username   => username , 
                                     :password   => apikey ,
                                     :proxy_ip   => "proxy.sdc.hp.com" ,
                                     :proxy_port => 8080, )   
    logger.info "JENKINS::Connection Failed" if @client.nil?
  end
  
  # TestDashBoardContainer_MOJ

  def test()    

       if @client.nil? 
          connect                  
       end 
       
       @client.job.list_all()
        logger.info "JENKINS::Connection Test Returning Good"
       return true
       
   rescue
        logger.info "JENKINS::Connection Test Returning Bad"
         return false
  end

end
