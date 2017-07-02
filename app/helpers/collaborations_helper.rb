module CollaborationsHelper
  
  def active( c )
    html = "<li>"
    ck = params[:id] 
    ck = "1" if ck.nil?
    
    if c.project.id.to_s == ck
      html = "<li class='active'>"
    end
    return html.html_safe
  end
end