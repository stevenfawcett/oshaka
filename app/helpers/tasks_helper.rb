module TasksHelper
  
  def TaskDisplay( task )
     con = task.connection
     html = ''
     if con.nil?
       reason = "Connection not configured"
       html << '<div class="middle red">'
     else
       
       if con.connected?
          html << '<div class="middle green">' 
          reason = "#{con.type} ( Connected )"
       else
          html << '<div class="middle yellow">'
          reason = "#{con.type} ( Disconnected )"
       end 
     end

     html <<    '<div class=inner>'
     html <<       "#{task.name}"
     html <<       "<li style='list-style-type: none;'>#{reason}</li>" 
     html << '   </div>'
     html << '</div>'
     
     return html.html_safe 
  end
  
  
end
