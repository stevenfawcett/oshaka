require 'trello'

class Ltrello < Connection
  
  def connect()
    Trello.configure do |config|
          config.developer_public_key = apikey 
          config.member_token = apitoken 
    end
    @client = Trello::Member.find(username)
  end
  
  def test()           
       if @client.nil? 
          connect                  
       end 
       if @client.username == username
         return true
       end
       
       return false
  rescue
       return false
  end


end