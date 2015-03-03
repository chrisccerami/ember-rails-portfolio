class Api::PostsController < ApplicationController
  include Geokit::Geocoders
  before_action :track_ip, only: [:create, :update, :destroy]

  def index
    render json: Post.includes(:comments)
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created, location: api_post_path(@post)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require('post').permit(:title, :body, :created_at, :updated_at)
  end

  def track_ip
    loc = Geokit::Geocoders::IpGeocoder.geocode(request.ip)
    visitor = Visitor.create(ip_address: request.ip, params: params,
                             longitude: loc.lng, latitude: loc.lat)
  end
end
