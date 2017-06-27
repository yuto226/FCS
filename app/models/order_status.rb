class OrderStatus < ApplicationRecord
  belongs_to :product
  belongs_to :table_number

  def self.total
    target = OrderStatus.where(order_status:'true')
    unless target.nil?
    total = 0
    target.each do |t|
      total += t.product.price * t.amount
    end
      total
    end
  end

  def self.search(key)
    OrderStatus.joins(:product).includes(:product).where(order_status:'true').where(['products.name LIKE ?', "%#{key}%"])
  end

end
