class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name

      t.text :description
      t.text :batch_description

      t.string :thc
      t.string :cbd

      t.string :butane

      t.float :donation

      t.float :quantity

      t.string :slug
      t.string :leafly_slug

      t.integer :supplier_id

      t.integer :product_type_id

      t.timestamps
    end
  end
end
