class User < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true

  has_secure_password
  has_many :cart_items
  has_many :orders
  has_many :destinations

  def self.full_name(id)
    user = User.find(id)
    "#{user.first_name} #{user.last_name}"
  end
end
