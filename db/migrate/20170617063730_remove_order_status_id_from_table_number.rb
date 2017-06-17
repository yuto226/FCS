class RemoveOrderStatusIdFromTableNumber < ActiveRecord::Migration[5.0]
  def change
    remove_column :table_numbers, :order_status_id, :string
  end
end
