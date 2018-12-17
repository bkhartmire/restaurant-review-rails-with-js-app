Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :restaurants, only: [:index, :new, :create, :destroy]
  resources :cuisines, only: [:index]
  resources :cities, only: [:show, :index] do
    resources :cuisines, only: [:show]
  end
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews
  resources :countries, only: [:index, :show]
  resources :users, only: [:show]
  post 'reviews/:id/edit' => 'reviews#edit'
  get 'countriesAZ', to: 'countries#countriesAZ'
  get 'countriesMost', to: 'countries#countriesMost'
end
