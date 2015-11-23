class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  # has_and_belongs_to_many :categories

  has_many :categories_posts, dependent: :destroy
  has_many :categories, through: :categories_posts
  belongs_to :user

  has_many :subscriptions
  has_many :subscribers,
           source: :user, through: :subscriptions

  validates :title, presence: true

  scope :reverse_order, ->(order) { order(created_at: order) }
  scope :published, -> { where(published: true) }
  scope :unpublished, -> { where(published: false) }

  after_create :subscribe_author

  def categories_titles
    # categories.map(&:title).join(', ')
    categories.pluck(:title).join(', ')
  end

  protected

  def subscribe_author
    user.subscribe_to(self)
  end
end
