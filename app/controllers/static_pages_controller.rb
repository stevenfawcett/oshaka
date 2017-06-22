class StaticPagesController < ApplicationController
  
  def home
    if not current_user.nil?
      redirect_to :controller=>'collaborations', :action => 'index'
    end
  end

  def help
  end
  
  def about
  end

  def contact
  end
end
