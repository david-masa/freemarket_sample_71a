class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :detail, null: false
      t.integer :price, null: false
      t.string :size
      t.integer :category_id, null: false
      t.integer :brand_id
      t.integer :condition_id, null: false
      t.timestamps 
    end
  end
end
