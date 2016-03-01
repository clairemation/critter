class FavoritePost < ActiveRecord::Base
  belongs_to :feed
  has_one :user, through: :feed
  has_many :posts
end
