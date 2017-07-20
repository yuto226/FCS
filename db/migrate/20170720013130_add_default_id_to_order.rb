class AddDefaultIdToOrder < ActiveRecord::Migration[5.0]
  def change
     change_column :order_statuses, :product_id, :integer, :default => 99
   end
end
