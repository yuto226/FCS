=begin
  specification
  name = 注文状況のmodel
  function = 注文状況を動的に保存。
  note = none
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = 取得したいデータのパラメータ。
  output = 注文情報に関するオブジェクト。
  end of specification
=end

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
