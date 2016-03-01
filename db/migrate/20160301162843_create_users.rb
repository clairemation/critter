class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :password_digest, :email, :species, :avatar_url

      t.timestamps
    end
  end
end
