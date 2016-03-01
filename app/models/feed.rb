class Feed < ActiveRecord::Base
  belongs_to :user
  has_many :followed_users
  has_many :favorite_posts
  has_many :posts, through: :followed_users
end
