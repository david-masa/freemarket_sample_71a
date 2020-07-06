class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.integer :category_id, null: false
      t.string :brand
      t.integer :condition_id, null: false
      # t.references :user, null: false, foreign_key: true
      # t.references :category_id, null: false, foreign_key:{to_table: :categories} 
      t.timestamps
    end
  end
end