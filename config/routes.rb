Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create, :destroy, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
