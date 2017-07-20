class AddDefaultStatusToOrder < ActiveRecord::Migration[5.0]
  def change
     change_column :order_statuses, :order_status, :string, :default => "false"
  end
end
