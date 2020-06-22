Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    scope module: "users" do
      root "home#index"
      get "/login", to: "sessions#new"
      post "/login", to: "sessions#create"
      delete "/logout", to: "sessions#destroy"
      resources :users
      resources :products
    end

    namespace :shops do
      root to: "homes#index"

      resources :products, param: :slug
      resources :orders, only: :index
    end
  end
end
