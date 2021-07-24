Rails.application.routes.draw do
  resources :elevators
  resources :columns
  resources :addresses
  resources :batteries
  resources :buildingdetails
  resources :buildings
  resources :customers
  resources :leads
  resources :quotes
#  get 'home/index' #devise tutorial default "landing page"
  root to: "pages#index"
  #devise_for :users
  devise_for :users, :controllers => { :registrations => 'signups' }
  #resources :users
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  root 'pages#index'
  get 'commercial' => 'pages#commercial'
  get 'residential' => 'pages#residential'
  get 'quote' => 'pages#quote'
  get 'index' => 'pages#index'
  get 'signups-auth' => 'pages#signups-auth'
  post 'signups-auth', action: :create, controller: "passwords"

#  get 'users/:id' => 'users#show', as: :user
#  post 'sign_up' => 'users#show'

  authenticate :user do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    get 'welcome' => redirect('/admin')

    resources :interventions
    get 'get_form_customer_selector', action: :get_form_customer_selector, controller: 'interventions'
    get 'get_form_building_selector', action: :get_form_building_selector, controller: 'interventions'
    get 'get_form_battery_selector',  action: :get_form_battery_selector,  controller: 'interventions'
    get 'get_form_column_selector',   action: :get_form_column_selector,   controller: 'interventions'
    get 'get_form_elevator_selector', action: :get_form_elevator_selector, controller: 'interventions'
    
  end


end
