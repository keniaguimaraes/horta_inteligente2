Rails.application.routes.draw do
  resources :sementes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :home
   resources :semente
   resources :ciclo
   resources :irrigacao
   resources :praga
   
   root 'home#index'
   get 'semente_plantio', to: 'semente#index'
   get 'semente_ciclo', to: 'ciclo#index'
   get 'semente_irrigacao', to: 'irrigacao#index'
   get 'semente_praga', to: 'praga#index'
end
