Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :cuisines
  resources :cities, only: [:show, :index] do
    resources :cuisines, only: [:show]
  end
  resources :restaurants, only: [:show] do
    resources :reviews
  end
  resources :countries, only: [:index, :show]
  resources :users, only: [:show]
  get 'countriesAZ', to: 'countries#sortAZ'
  get 'countriesMost', to: 'countries#sortMost'
  get 'citiesAZ', to: 'cities#sortAZ'
  get 'citiesMost', to: 'cities#sortMost'
  get 'cuisinesAZ', to: 'cuisines#sortAZ'
  get 'cuisinesMost', to: 'cuisines#sortMost'
  get 'restaurantsAZ', to: 'restaurants#index'
end
