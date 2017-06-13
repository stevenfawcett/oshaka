class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :admin_user,     only: [:destroy  ] 
  before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless @user.activated?
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.activate
         # @user.send_activation_email
         # flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def resolve_changes( format )

        if params[:move] == '>>'
             params[:user][:available].each do | add_project |
                    @user.collaborations.create( project_id: add_project ) unless add_project.empty?
                    format.html { redirect_to notice: 'User Added' , action: "edit" , id: @user.id  }
             end
             format.html { redirect_to  action: "edit" , id: @user.id  }
        end

        if params[:move] == '<<'
             params[:user][:selected].each do | rm_project |
                    c = @user.collaborations.where( project_id: rm_project).first unless rm_project.empty?
                    c.destroy unless c.nil?
                    format.html { redirect_to notice: 'User Removed' , action: "edit" , id: @user.id  }
             end
             format.html { redirect_to  action: "edit" , id: @user.id  }
        end
  end

  def update

    respond_to do |format|
      if @user.update( user_params )
        resolve_changes( format )
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation , :available , :selected )
    end

    # Before filters

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      if not ( current_user?(@user) || current_user.admin? ) 
          redirect_to(root_url)  
      end
    end
    
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
