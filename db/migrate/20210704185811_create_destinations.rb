class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.bigint :user_id
      t.string :destination

      t.timestamps
    end

    remove_column :users, :home_address
  end
end
