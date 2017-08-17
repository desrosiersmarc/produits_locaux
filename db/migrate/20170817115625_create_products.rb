class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.float :price_per_weight
      t.integer :weight
      t.string :description
      t.boolean :active
      t.references :category, foreign_key: true
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
