class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :name, :string, index: true, null: false
    add_column :categories, :ancestry, :string, index: true
  end
end
