Rails.application.routes.draw do
    get 'dancers/isadancer'
    get 'igdancer/show'
    resources :dancers
    resources :igdancer
    get 'igdancer/show'
    root to: 'dancers#show'
    get '/button', to: 'dancers#button'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
