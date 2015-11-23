class Comment < ActiveRecord::Base
  belongs_to :post

  validates :body, :post_id, presence: true

  after_create :send_notification


  private

  def send_notification
    post.subscribers.find_each do |user|
      NotificationMailer.comment_notification(user, post, self).deliver_now
    end
  end
end