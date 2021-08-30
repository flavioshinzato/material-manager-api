Rails.application.routes.draw do
  devise_for :admins
  resources :sports_goods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
