=begin
  specification
  name = 注文状況のcontroler
  function = 注文管理全般を担う。
  note = none
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = 取得したいデータのパラメータ。
  output = 注文情報に関するオブジェクトを生成しViewを呼び出す。
  end of specification
=end

class OrdersController < ApplicationController
  #インデックス画面の表示
  def index
    @order = OrderStatus.where(order_status:'false').page(params[:page])
    @order_status = OrderStatus.new
  end

  def complete
    ids = []
    if params[:order_status].blank?
      redirect_to root_path and return
    else
    #完了する注文のパラメータを取得
    ids = params[:order_status][:id]
    end
    @order_comp = OrderStatus.where(id:ids)
    @order_comp.update_all({ :order_status => 'true' })
    redirect_to root_path,notice:"#{ids.length}個の注文を完了しました。"
  end
#完了済み注文画面の表示
  def complete_index
    @order = OrderStatus.where(order_status:'true').page(params[:page])
  end

  private
  def order_params
    params.require(:order_status).permit(:id)
  end
end
