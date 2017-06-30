=begin
  specification
  name = application routing
  function = routingを定義する。
  note = bundle exc rails db:seedでトリガー。
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = 行先URL
  output = 行先controler
  end of specification
=end

Rails.application.routes.draw do
  get 'satistics/index'

  root 'orders#index'

  #???
  get 'orders/index', as:'orders'
  get 'orders/index'
  get '/orders/complete'
  post '/orders/complete'
  get '/orders/complete_index'
  get '/satistics/index', as:'satistics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
