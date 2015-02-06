class Api::CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: :created
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      head :no_content
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require('comment').permit(:title, :body, :created_at, :updated_at, :post_id)
  end
end
