class ProjectsController < ApplicationController
  def index
    @projects = Projects.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    # filled by rahul
  end

  def create
    # filled by rahul
  end
end
