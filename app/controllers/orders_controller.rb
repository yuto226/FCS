class OrdersController < ApplicationController
  def index
    @order = OrderStatus.where(order_status:'false').page(params[:page])
    @order_status = OrderStatus.new
  end

  def complete
    ids = []
    if params[:order_status].blank?
      redirect_to root_path and return
    else
    ids = params[:order_status][:id]
    end
    @order_comp = OrderStatus.where(id:ids)
    @order_comp.update_all({ :order_status => 'true' })
    redirect_to root_path,notice:"#{ids.length}個の注文を完了しました。"
  end

  def complete_index
    @order = OrderStatus.where(order_status:'true').page(params[:page])
  end

  private
  def order_params
    params.require(:order_status).permit(:id)
  end
end
