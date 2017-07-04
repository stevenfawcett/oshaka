module CollaborationsHelper
  
  def active( c )
    html = "<li>"
    ck = params[:id] 
    ck = "1" if ck.nil?
    
    if c.id.to_s == ck
      logger.debug "COLLABORATIONSHELPER:: #{c.id} ==  #{ck}"
      html = "<li class='active'>"
   else
      logger.debug "COLLABORATIONSHELPER:: #{c.id} ?? #{ck}"
    end
    return html.html_safe
  end
end
