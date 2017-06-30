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
  #VALID_SORT_COLUMNSに含まれないパラメータは取得できない。
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
  end
end
