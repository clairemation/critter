class User < ActiveRecord::Base

  has_many :posts, :feeds
  has_many :favorite_posts, through: :feeds
  has_many :followed_users, through: :feeds, class_name: 'User'

end
