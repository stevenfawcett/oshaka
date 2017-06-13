module ProjectsHelper

  def image_for(project)
    image = project.icon.presence  || "test.png"
    image_tag( image , alt: project.name, size: "32"  )
  end

  
  def status(project)
       if project.active
	return "Active"
       else
        return "Deactivated"
       end 
  end

  def edit_mode
      logger.debug self.action_name

      if self.action_name == "show"
           return false
      end

      return true
  end

end
