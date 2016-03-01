class Post < ActiveRecord::Base
  belongs_to :user
  has_many :feeds, :favorite_posts
  has_many :followers, through: :feeds, source: :user
end
