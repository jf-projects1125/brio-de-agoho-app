Rails.application.routes.draw do
  namespace :admin do
    resources :affiliates
  end
  
  devise_for :affiliates
  devise_for :admins, controllers: { sessions: 'admin/sessions'}

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  authenticated :affiliate_user do
    root to: "affiliate#index", as: :affiliate_root
  end

  # resources :affiliate

  get "admin" => "admin#index"
  get "affiliate" => "affiliate#index"
  get "affiliate/profile" => "affiliate#profile"
  get "affiliate/edit" => "affiliate#edit"
  patch "affiliate/update" => "affiliate#update"

  get "sales/invest/form/:ref_code" => "sales#new", as: :sales_form
  post "sales/invest/form/create" => "sales#create"
  get "sales/invest/message" => "sales#message", as: :sales_message

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
