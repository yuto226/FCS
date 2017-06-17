class AddTableNumberIdToOrderStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :order_statuses, :table_number_id, :integer
  end
end
