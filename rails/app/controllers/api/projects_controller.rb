class Api::ProjectsController < ApplicationController
  include Geokit::Geocoders
  before_action :track_ip, only: [:create, :update, :destroy]

  def index
    render json: Project.all
  end

  def show
    render json: Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project, status: :created, location: api_project_path(@project)
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

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      head :no_content
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.require('project').permit(:name, :app_url, :repo_url, :description)
  end

  def track_ip
    loc = Geokit::Geocoders::IpGeocoder.geocode(request.ip)
    visitor = Visitor.create(ip_address: request.ip, params: params,
                             longitude: loc.lng, latitude: loc.lat)
  end
end
