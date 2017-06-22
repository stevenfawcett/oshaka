class CollaborationsController < ApplicationController
  
  def index
   # @colab =  Collaboration.all.select { | m | m.user.name == current_user.name }
    @colabs = Collaboration.all

  end
  
  def show
    @colab = Collaboration.find(params[:id])  
  end
  
  private
    
  def colab_params
    params.require(:colab).permit(:tab, :id)
  end
  
end
