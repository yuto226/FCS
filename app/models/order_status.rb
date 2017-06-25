class OrderStatus < ApplicationRecord
  belongs_to :product
  belongs_to :table_number

  def self.total
    target = OrderStatus.where(order_status:'true')
    unless target.nil?
    total = 0
    target.each do |t|
      total += t.product.price
    end
      total
    end
  end

end
