class AddPostIdToComments < ActiveRecord::Migration
  def change
    # add_column :comments, :post_id, :integer

    # change_table :comments do |t|
    #   t.integer :post_id
    # end

    # add_reference :comments, :post, index: true

    add_belongs_to :comments, :post
  end
end
