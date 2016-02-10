class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :category
      t.integer :seller_id

      t.timestamps
    end
  end
end
