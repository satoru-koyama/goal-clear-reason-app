Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resorces :users, only: [:show, :edit]
  resorces :data, except:[:destroy]
end
