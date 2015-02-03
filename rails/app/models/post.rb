class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 20, maximum: 100 }
  validates :body, presence: true, length: { minimum: 200}
end
