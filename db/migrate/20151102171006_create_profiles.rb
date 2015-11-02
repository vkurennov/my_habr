class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true, uniq: true

      t.timestamps null: false
    end
  end
end
