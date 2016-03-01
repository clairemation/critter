class User < ActiveRecord::Base
  has_many :posts
  has_many :subscriptions, class_name: "Follow", foreign_key: 'subscriber_id'
  has_many :follows, class_name: "Follow", foreign_key: 'followed_user_id'
  has_many :favorite_posters, through: :subscriptions, source: :subscribee#class_name: 'User', foreign_key: 'subscriber_id'
  has_many :subscribers, through: :follows, source: :subscriber

  has_secure_password

end
