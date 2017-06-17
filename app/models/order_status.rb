class OrderStatus < ApplicationRecord
  belongs_to :product
  belongs_to :table_number
end
