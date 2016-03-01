class Post < ActiveRecord::Base
  belongs_to :author, class_name: :user
  has_many :feeds
  has_many :favorite_posts
  has_many :followers, through: :feeds, source: :user
end
