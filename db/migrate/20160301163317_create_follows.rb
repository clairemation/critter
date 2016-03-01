class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :subscriber_id, index:true
      t.integer :followed_user_id, index: true

      t.timestamps
    end
  end
end
