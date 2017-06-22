module CollaborationsHelper
 
  def nav_item(  c )
    if params[:id] == c.id
      css_class = 'active'
    end
    return %( <li class="#{css_class}"><a href="##{c.id}">#{c.project.name}</a></li> )
  end

end; 


