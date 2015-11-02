class Post < ActiveRecord::Base
  has_many :comments
  # has_and_belongs_to_many :categories

  has_many :categories_posts
  has_many :categories, through: :categories_posts

  validates :title, presence: true
end
