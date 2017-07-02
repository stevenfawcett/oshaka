class CollaborationsController < ApplicationController
  
  def index
    @colabs =  Collaboration.all.select { | m | m.user.name == current_user.name }
    @tasks  = Task.all.select { | m | m.project_id == @colabs.first.project_id }
  end
    
  def show
    @colabs =  Collaboration.all.select { | m | m.user.name == current_user.name }
    @colab  =  Collaboration.find(params[:id])
    @tasks  =  Task.all.select { | m | m.project_id == @colab.project_id }
  end
  
  private
    
  def colab_params
    params.require(:colab).permit(:tab, :id)
  end
  
end
