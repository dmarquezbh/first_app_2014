FirstApp::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  #match 'black' => 'welcome#black', :via => :get, :as => :black

  get 'black', to: 'welcome#black'
  get 'about', to: 'welcome#about', as: :about

  resources :users do
    resources :bills
  end
end
