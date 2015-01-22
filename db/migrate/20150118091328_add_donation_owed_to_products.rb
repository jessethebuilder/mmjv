class AddDonationOwedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :donation_owed, :float, :default => 0
  end
end
