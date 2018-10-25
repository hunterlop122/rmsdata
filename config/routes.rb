Rails.application.routes.draw do
    resources :dancers
    root to: 'dancers#show'
    get 'dancers/isadancer'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
