class AddMenuIndexToProductType < ActiveRecord::Migration
  def change
    add_column :product_types, :menu_index, :integer
  end
end
