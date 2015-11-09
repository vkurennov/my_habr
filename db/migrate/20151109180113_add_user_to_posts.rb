class AddUserToPosts < ActiveRecord::Migration
  def change
    add_belongs_to :posts, :user, index: true
  end
end
