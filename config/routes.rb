Rails.application.routes.draw do
  devise_for :admins
  resources :sports_materials
end
