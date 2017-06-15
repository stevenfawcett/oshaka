require 'jenkins_api_client'


class Jenkins

  def initialize()
       @client = JenkinsApi::Client.new(:server_url => 'http://127.0.0.1:8080', 
                                        :username => 'admin', 
                                        :password => '9f77866cea1ec1928cbba1099af19113' )
                                        
     # @client = JenkinsApi::Client.new(:server_ip => 'https://c4t19076.itcs.hpecorp.net:8443/', 
     #                                :username => 'steven.fawcett@hpe.com', 
     #                                :password => 'f4be138e77551be34c77e7bf6c48ef5f',
     #                                :ssl_verify => false ,
     #                                :proxy_ip => 'proxy.sdc.hp.com', 
     #                                :proxy_port => 8080 )
  end

  def job_list()
       @data = @client.job.list_all()
  end

end
