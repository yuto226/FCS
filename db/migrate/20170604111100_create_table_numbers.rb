class CreateTableNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :table_numbers do |t|
      t.integer :order_status_id
      t.integer :table_number

      t.timestamps
    end
  end
end
