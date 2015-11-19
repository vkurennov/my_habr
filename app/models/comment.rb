class Comment < ActiveRecord::Base
  belongs_to :post

  validates :body, :post_id, presence: true

  after_save :send_notification


  private

  def send_notification
    NotificationMailer.comment_notification(post.user, post, self).deliver_now
  end
end