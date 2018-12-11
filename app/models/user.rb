class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events

  validates :name, presence: true, length: {maximum: 35}


  private

  def set_name
    self.name = "Agent#{rand(777)}" if self.name.blank?
  end
end
