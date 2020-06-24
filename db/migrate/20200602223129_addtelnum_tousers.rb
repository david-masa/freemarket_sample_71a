class AddtelnumTousers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telnum, :integer
  end
end
