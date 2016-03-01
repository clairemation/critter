class Follow < ActiveRecord::Base
  belongs_to :subscriber, class_name: 'User', foreign_key: "subscriber_id"
  belongs_to :subscribee, class_name: 'User', foreign_key: "followed_user_id"
  # has_many :favorite_posters, source: :user
  # has_many :feed_posts, through: :favorite_posters, source: :post
end
