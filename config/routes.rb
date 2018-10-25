Rails.application.routes.draw do
    root to: 'dancers#show'
    get 'dancers/isadancer'
    resources :dancers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
