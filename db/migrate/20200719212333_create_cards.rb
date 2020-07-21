class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text       :token,      null: false
      t.references :user ,      null: false
      t.timestamps
    end
  end
end
