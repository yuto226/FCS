Rails.application.routes.draw do
  root 'orders#index'

  get 'orders/complete'
  post '/orders/complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
