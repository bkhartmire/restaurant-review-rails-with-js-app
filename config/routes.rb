Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:new, :index]
  end
  resources :reviews, only: [:show]
  resources :users, only: [:show]
  resources :visits
  resources :cuisines, only: [:show]
  resources :cities, only: [:show]
  resources :countries, only: [:show]
  get 'countriesAZ', to: 'countries#sortAZ'
  get 'countriesMost', to: 'countries#sortMost'
  get 'citiesAZ', to: 'cities#sortAZ'
  get 'citiesMost', to: 'cities#sortMost'
  get 'cuisinesAZ', to: 'cuisines#sortAZ'
  get 'cuisinesMost', to: 'cuisines#sortMost'
  get 'restaurantsAZ', to: 'restaurants#index'
end
