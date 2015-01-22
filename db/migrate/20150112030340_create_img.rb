class CreateImg < ActiveRecord::Migration
  def change
    create_table :imgs do |t|
      t.integer :has_img_id
      t.string :has_img_type
      t.string :image

      t.timestamps
    end
  end
end
