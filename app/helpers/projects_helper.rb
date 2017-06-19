module ProjectsHelper

  def image_for(project)
    image = project.icon.presence  || "test.png"
    image_tag( image , alt: project.name, size: "32"  )
  end

  
  def indicate(state)
       if state
          return "green-tick.png"
       else
          return "red-cross.png"
       end 
  end
  
  def status(project)
       if project.active
	return "Active"
       else
        return "Deactivated"
       end 
  end

  def name(project)
       if project.active
          return project.name
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
