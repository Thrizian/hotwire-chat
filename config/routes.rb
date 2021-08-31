Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'
  resources :rooms do
    resources :messages
    member do
      get 'delete'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
