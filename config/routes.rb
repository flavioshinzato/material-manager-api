Rails.application.routes.draw do
  devise_for :admins, only: []
  resources :sports_materials

  resources :admins, only: [:create] do
    collection do
      post :sign_in, controller: :sessions, action: :create
      delete :sign_out, controller: :sessions, action: :destroy
    end
  end
end
