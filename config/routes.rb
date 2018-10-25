Rails.application.routes.draw do
    resources :dancers
    root to: 'dancers#show'
    get 'dancers/isadancer'
    get 'dancers/new'
    get 'dancers/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
