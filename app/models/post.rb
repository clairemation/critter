class Post < ActiveRecord::Base
  belongs_to :user
  has_many :follows
  has_many :favorite_posts
  has_many :followers, through: :follows, source: :user
end
