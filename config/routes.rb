Rails.application.routes.draw do
  resources :promotions
  resources :departments
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
