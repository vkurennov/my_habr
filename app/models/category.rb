class Category < ActiveRecord::Base
  # has_and_belongs_to_many :posts

  has_many :categories_posts, dependent: :destroy
  has_many :posts, through: :categories_posts

  validates :title, presence: true
end
