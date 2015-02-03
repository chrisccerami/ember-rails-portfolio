class Post < ActiveRecord::Base
  validates :title, presence: true, length: { min: 20, max: 100 }
  validates :body, presence: true, length: { min: 200}
end
