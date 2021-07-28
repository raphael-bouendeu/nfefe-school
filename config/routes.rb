Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'pages/about'
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get '/myprojects'=>'project#list'


  get'/project/:id' =>'project#show'


  patch  '/free' => 'charge#free'

   resources :project do
     resources :task, only: [:show]
  end

 resources :project do
   resources :reviews, only: [:create,:destroy]
  end

end
