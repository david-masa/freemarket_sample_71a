class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|

      t.timestamps
      t.string :src
      t.references :product, foreign_key: true
    end
  end
end
