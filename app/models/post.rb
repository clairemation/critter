class Post < ActiveRecord::Base
  belongs_to :user
  has_many :follows, through: :user, foreign_key: 'followed_user_id'
  has_many :subscribers, through: :follows, class_name: 'User'
  has_many :favorite_posts
  has_many :followers, through: :follows, source: :user
end
