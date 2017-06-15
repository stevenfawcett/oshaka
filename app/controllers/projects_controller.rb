class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,  only: [:destroy , :edit, :update, :new ]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all.paginate(page: params[:page])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @j = Jenkins.new
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def resolve_changes( format )
       
        if params[:move] == '>>' 
	     params[:project][:available].each do | add_user |
                    @project.collaborations.create( user_id: add_user ) unless add_user.empty?
                    format.html { redirect_to notice: 'User Added' , action: "edit" , id: @project.id  }
             end
             format.html { redirect_to  action: "edit" , id: @project.id  }
        end 

        if params[:move] == '<<' 
	     params[:project][:selected].each do | rm_user |
                    c = @project.collaborations.where( user_id: rm_user).first unless rm_user.empty?
                    c.destroy unless c.nil?
                    format.html { redirect_to notice: 'User Removed' , action: "edit" , id: @project.id  }
             end
             format.html { redirect_to  action: "edit" , id: @project.id  }
        end 
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update

    respond_to do |format|
      if @project.update(project_params)
        resolve_changes( format )
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :active , :available , :selected)
    end

    # Confirms an admin user.
    def admin_user
       redirect_to( projects_url ) unless current_user.admin?
    end
    
end
