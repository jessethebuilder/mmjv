class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :product_type
      t.string :thc
      t.string :cbd
      t.string :butane
      t.float :price

      t.timestamps
    end
  end
end
