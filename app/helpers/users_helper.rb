module UsersHelper
  
  def role_img( user )
    if user.admin == true
      return "admin.svg"
    else
      return "user.svg"
    end
  end
  
  def role( user )
    if user.admin == true
      return "Adminstrator"
    else
      return "User"
    end
  end
  
  def Projects( user )
    return user.
  end
end