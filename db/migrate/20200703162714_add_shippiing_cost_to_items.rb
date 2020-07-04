class AddShippiingCostToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shipping_cost, :integer
  end
end
