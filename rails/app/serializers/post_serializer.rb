class PostSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :body, :created_at, :updated_at

  has_many :comments
end
