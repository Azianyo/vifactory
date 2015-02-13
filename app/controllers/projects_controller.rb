class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def create
    if @project = Project.create(project_params)
    flash[:success] = "Projekt został utworzony"
    redirect_to @project
    else
      render :action => "new"
    end
  end

  def destroy
    @project = Project.find(params[:id]).destroy
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    if @project = Project.create(project_params)
      flash[:success] = "Projekt został wyedytowany"
      redirect_to @project
    else
      render :action => "edit"
    end
  end

  def project_params
    params.require(:project).permit(:title, :content)
  end
end
