Rails.application.routes.draw do
  resources :addresses, :defaults => { :format => :json }
  resources :sweeps, :defaults => { :format => :json }
  resources :picks, :defaults => { :format => :json }
  resources :selections, :defaults => { :format => :json }
  resources :cards, :defaults => { :format => :json }
  resources :questions, :defaults => { :format => :json }
  resources :games, :defaults => { :format => :json }
  resources :teams, :defaults => { :format => :json }
  resources :players, :defaults => { :format => :json }
  resources :game_types, :defaults => { :format => :json }
  resources :statuses, :defaults => { :format => :json }
  resources :clients, :defaults => { :format => :json }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
