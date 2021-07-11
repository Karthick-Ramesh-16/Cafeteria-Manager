class AddColumnToOrdes < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :destination, :string
  end
end
