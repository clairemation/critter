class User < ActiveRecord::Base
  has_many :posts
  has_many :feeds
  has_many :favorite_posts, through: :feeds
  has_many :followed_users, through: :feeds, foreign_key: 'follower_id', class_name: 'User'
  has_many :followers, through: :feeds, foreign_key: 'followed_user_id', class_name: 'User'

end
