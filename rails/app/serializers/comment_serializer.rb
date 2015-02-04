class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :post_id, :created_at, :updated_at
end
