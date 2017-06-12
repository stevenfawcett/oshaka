module ProjectsHelper

  def image_for(project)
    image = project.icon.presence  || "test.png"
    image_tag( image , alt: project.name, size: "32"  )
  end
end
