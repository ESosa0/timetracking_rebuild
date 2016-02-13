class ProjectsController < ApplicationController

  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end

  def show 
    @project = Project.find params[:id]
  rescue ActiveRecord::RecordNotFound 
    render 'no_projects_found'
  end
  def new
    @project= Project.new
  end
  def create
    @project = Project.new project_params
    if @project.save
      redirect_to action: 'index', controller: 'projects'
    else
      @errors = @project.errors.full_messages
      render "new"
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
