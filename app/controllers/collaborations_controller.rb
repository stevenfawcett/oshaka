class CollaborationsController < ApplicationController
  
  def index
    @colabs =  Collaboration.all.select { | m | m.user.name == current_user.name }
  end
    
  def show
    @colabs =  Collaboration.all.select { | m | m.user.name == current_user.name }
    @colab = Collaboration.find(params[:id]) 
  end
  
  private
    
  def colab_params
    params.require(:colab).permit(:tab, :id)
  end
  
end
