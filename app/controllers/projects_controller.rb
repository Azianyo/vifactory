class ProjectsController < ApplicationController
  def new
  end

  def index
    @projects = Project.all
  end

  def create
  end

  def destroy
  end

  def show
  end

  def edit
  end
end
