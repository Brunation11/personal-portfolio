class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    if logged_in?
      @project = Project.new
      respond_to do |format|
        format.html { render layout: !request.xhr? }
      end
    else
      redirect_to root_path
    end
  end

  def edit
    if logged_in?
      @project = Project.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :link, :description, :technologies, :future_plans)
  end
end