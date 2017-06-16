class AddProductIdToOrderStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :order_statuses, :product_id, :integer
  end
end
