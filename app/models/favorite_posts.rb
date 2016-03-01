class FavoritePost < ActiveRecord::Base
  belongs_to :feed
  belongs_to :user, through: :feed
  has_many :posts
end
