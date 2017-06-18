Rails.application.routes.draw do
  get 'satistics/index'

  root 'orders#index'

  #???
  get 'orders/index', as:'orders'
  get 'orders/index'
  get '/orders/complete'
  post '/orders/complete'
  get '/orders/complete_index'
  get '/satistics/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
