class SatisticsController < ApplicationController
  def index
    @satistics = OrderStatus.where(order_status:'true').page(params[:page])
=begin
    @name = []
    @amount = []
    @price = []
    @category = []
    index = -1
    #名前をgroup化
    @satistics_all.each do |s|
      index += 1
      key_i = 0
      flag = false
      if @name.blank?
      @name[index] = s.product.name
      end
      #新しい名前か判定
      for i in 0..@name.length do
        if @name[i] == s.name
          flag = true
          key_i = i
        end
        if flag
          @amount[key_i] += s.amount
          @price[key_i] = s.product.price
          @category[kry_i] = s.product.category
        end
      end
    end
=end
  end
end
