class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: :author, index: true
      t.text :text

      t.timestamps
    end
  end
end
