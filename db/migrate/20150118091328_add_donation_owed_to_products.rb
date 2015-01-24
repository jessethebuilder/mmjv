class AddDonationOwedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :donation_owed, :float
  end
end
