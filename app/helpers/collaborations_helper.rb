module CollaborationsHelper
  
  def active( c )
    html = "<li>"
    logger.debug( "Paramter input is C #{c.project.id} : Params #{ params[:id] }  #{c.project.id.to_s==params[:id] }"  )
    if c.project.id.to_s == params[:id]
      html = "<li class='active'>"
    end
    return html.html_safe
  end
end