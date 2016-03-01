class Feed < ActiveRecord::Base
  belongs_to :user
  has_many :followed_users, class_name: 'User'
  has_many :favorite_posts, class_name: 'Post'
  has_many :posts, through: :followed_users
end
