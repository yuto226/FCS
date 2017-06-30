=begin
  specification
  name = 注文統計のcontroler
  function = 注文統計全般を担う。
  note = none
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = 取得したいデータのパラメータ。
  output = 注文管理に関するオブジェクトを生成しViewを呼び出す。
  end of specification
=end

class SatisticsController < ApplicationController
  VALID_SORT_COLUMNS = %w(products.name amount products.price products.category table_numbers.table_number)
  def index
    @satistics = OrderStatus.where(order_status:'true').page(params[:page])
    #以下ソート処理
    sort = params[:sort] if VALID_SORT_COLUMNS.include?(params[:sort])
  unless sort.nil?
    if sort == 'amount'
      @satistics = OrderStatus.where(order_status:'true').order("#{sort} DESC").page(params[:page])
    elsif sort == 'table_numbers.table_number'
      @satistics = OrderStatus.joins(:table_number).includes(:table_number).where(order_status:'true').order("#{sort} DESC").page(params[:page])
    elsif sort == 'products.price' || sort == 'products.category'
      @satistics = OrderStatus.joins(:product).includes(:product).where(order_status:'true').order("#{sort} DESC").page(params[:page])
    elsif sort == 'products.name'
      @satistics = OrderStatus.joins(:product).includes(:product).where(order_status:'true').order("#{sort} DESC").page(params[:page])
    end
  end

  #以下検索処理
  unless params[:search].blank?
    logger.debug params[:search]
    @satistics = OrderStatus.search(params[:search]).page(params[:page])
  end
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
