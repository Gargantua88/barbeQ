class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :comments
  has_many :subscriptions
  has_many :photos

  validates :name, presence: true, length: {maximum: 35}

  after_commit :link_subscriptions, on: :create

  mount_uploader :avatar, AvatarUploader

  private

  def link_subscriptions
    Subscription.where(user: nil, user_email: email).update_all(user: self)
  end
end