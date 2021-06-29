Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  get 'home', to: 'homes#home', as: 'home'

  resources :users, only: [:show, :edit]
  resources :data, except:[:destroy]
end
