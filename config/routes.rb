Rails.application.routes.draw do

  get 'categories/index'
  root 'categories#index'

  devise_for :users

  resources :categories do
    resources :subcategories
  end

  resources :listings do
    collection do
      get 'search'
    end
  end


  match '/help', to: 'pages#help', via: :get
    match '/terms', to: 'pages#terms', via: :get
  match '/subcategories/dynamic_dropdown', to: 'subcategories#dynamic_dropdown', via: :post
  match '/myads', to: 'listings#myads', via: :get

end
