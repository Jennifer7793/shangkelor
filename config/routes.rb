Rails.application.routes.draw do
  devise_for :admins
  get 'user/index'
  root to: "users#index"
  resources :courses
end
