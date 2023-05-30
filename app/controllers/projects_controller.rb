class ProjectsController < ApplicationController

def index
  # filled by denise
end

def show
  # filled by karen
end

def new
  # filled by rahul
  @project = Project.new
end

def create
  # filled by rahul
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
