class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one :profile, dependent: :destroy
  has_many :posts, dependent: :destroy

  has_many :subscriptions
  has_many :subscribed_posts,
           source: :post, through: :subscriptions

  def author_of?(object)
    id == object.user_id
  end

  def subscribed_to?(post)
    !!subscription_for(post)
  end

  def subscription_for(post)
    @subscription ||= subscriptions.where(post: post).first
  end

  def subscribe_to(post)
    subscribed_posts << post
  end
end
