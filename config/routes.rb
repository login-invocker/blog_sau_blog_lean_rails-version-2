Rails.application.routes.draw do
  root 'home#index'
  get '/:category_id', to: "home#index"
  get 'login', to: 'login#index'
  get 'logout', to: 'login#delete'

  get 'register', to: 'register#index'
  post 'login', to: 'login#create'

  get "file", to: 'renderfile#download_pdf'
  resources :users, :posts, :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end