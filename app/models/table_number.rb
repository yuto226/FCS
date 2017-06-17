class TableNumber < ApplicationRecord
  has_many :order_statuses, dependent: :destroy
end
