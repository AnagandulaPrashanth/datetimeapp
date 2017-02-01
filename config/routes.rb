Rails.application.routes.draw do
  root 'datetimes#index'
  devise_for :users
  resources :datetimes
  
end
