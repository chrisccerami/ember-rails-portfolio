class Api::ProjectsController < ApplicationController
  def index
    render json: Project.all
  end

  def show
    render json: Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      head :no_content
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require('project').permit(:name, :app_url)
  end
end
