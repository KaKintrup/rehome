class ProjectsController < ApplicationController
  def index
    @projects = Projects.all
  end
  
  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @user = current_user
    @project = Project.new(project_params)
    @project.user = @user
    @project.save
    redirect_to projects_path
  end
 
 private

  def project_params
    params.require(:project).permit([:room, :location, :budeget, :time_frame, :sustainability, :description, :img_url])
   end
 end
