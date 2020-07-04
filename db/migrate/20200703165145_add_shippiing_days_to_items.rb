class AddShippiingDaysToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shipping_days, :integer
  end
end
