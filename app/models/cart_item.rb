class CartItem < ActiveRecord::Base
  belongs_to :user
  has_many :menu_items

  def self.total_amount(user_id)
    cart_items = CartItem.where(user_id: user_id)
    cart_items.map { |item| item.quantity * MenuItem.find(item.menu_item_id).price }.sum
  end
end
