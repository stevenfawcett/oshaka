module TasksHelper
  
  def TaskDisplay( task )
     html = ''
     if task.connection.nil?
       reason = "Connection not configured"
       html << '<div class="middle red">'
     else
       
       if task.connection.connected?
          html << '<div class="middle green">' 
          reason = "#{task.connection.type} ( Connected )"
       else
          html << '<div class="middle yellow">'
          reason = "#{task.connection.type} ( Disconnected )"
       end 
     end

     html <<    '<div class=inner>'
     html <<       "CHEESE #{task.id}"
     html <<       "<li style='list-style-type: none;'>#{reason}</li>" 
     html << '   </div>'
     html << '</div>'
     
     return html.html_safe 
  end
  
  
end
