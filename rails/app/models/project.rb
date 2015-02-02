class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :app_url, presence: true
  validates :repo_url, presence: true
  validates :description, presence: true
end
