Rails.application.routes.draw do
  resources :books do
    member do
      post 'take'
      post 'return'
    end
  end
  root 'pages#index'
end