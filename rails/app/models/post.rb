class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true, length: { minimum: 20, maximum: 100 }
  validates :body, presence: true, length: { minimum: 200}
end
