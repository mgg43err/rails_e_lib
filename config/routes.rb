Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :books do
    member do
      post 'take'   # This creates the take_book_path
      post 'return' # If you have a return action as well
    end
  end
  # other routes...
end
