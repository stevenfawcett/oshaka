class SettingsController < ApplicationController
  before_action :admin_user
  
  def index
    @connections = Connection.all.paginate(page: params[:page])
  end
 
  def new
    @connections = Connection.new
  end 
  
  def create
    @connection = Connection.new(connection_params)

    respond_to do |format|
      if @connection.save
        format.html { redirect_to @connection, notice: 'Connection was successfully created.' }
      else
        format.html { render :new  }
      end
    end
  end
  
  private

    # Confirms an admin user.
    def admin_user
       redirect_to( root_url ) unless current_user.admin?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_params
      params.require(:connection).permit(:name, :url , :apikey )
    end
    
end
