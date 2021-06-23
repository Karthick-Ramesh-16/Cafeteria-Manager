class MenuItem < ActiveRecord::Base
  belongs_to :menu_category

  def self.get_menu_items(id)
    where(menu_category_id: id)
  end
end
