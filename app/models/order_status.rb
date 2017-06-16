class OrderStatus < ApplicationRecord
  belongs_to :product
  belongs_to :table_numbers
end
