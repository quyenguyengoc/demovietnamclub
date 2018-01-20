Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get "members/new_user" => "registrations#new_user", as: "new_user" # custom path to sign_up/registration
    get "members/new_student" => "registrations#new_student", as: "new_student"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :categories
  resources :informations
  resources :member
end
