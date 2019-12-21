Rails.application.routes.draw do

  get 'admins/index'

  resources :admins

  devise_for :users do
    devise_for :duplicate , only: [:create]
  end 
  resources :parents
 

  resources :students
  resources :teachers
  resources :subjects
  resources :class_creates
  get 'admin_users/index'


  root 'admin_users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
