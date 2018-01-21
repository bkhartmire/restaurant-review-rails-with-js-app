Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :cities, only: [:show] do
    resources :cuisines, only: [:show]
  end
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews
  resources :restaurants
  resources :users, only: [:show]
  post 'reviews/:id/edit' => 'reviews#edit'
end
