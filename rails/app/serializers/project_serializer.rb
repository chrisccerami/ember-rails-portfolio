class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :app_url, :repo_url, :description
end
